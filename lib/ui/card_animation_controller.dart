import 'package:flutter/material.dart';
import 'dart:math' as math;

enum SwipeDirection {
  startToEnd,
  endToStart,
}

abstract class CardAnimationController {
  factory CardAnimationController() => _CardAnimationControllerImpl();

  AnimationController get controller;

  Animation<double> get offset;

  Animation<double> get rotateAngle;

  void initialize(TickerProvider vsync, VoidCallback onDone);

  void dispose();
}

///
class _CardAnimationControllerImpl implements CardAnimationController {
  @override
  late final AnimationController controller;
  @override
  late final Animation<double> offset;
  @override
  late final Animation<double> rotateAngle;

  @override
  void initialize(TickerProvider vsync, VoidCallback onDone) {
    controller = AnimationController(duration: const Duration(milliseconds: 1000), vsync: vsync);

    controller.addListener(() {
      if (controller.isCompleted) {
        onDone();
        controller.reset();
      }
    });

    offset = Tween<double>(
      begin: 0,
      end: 420.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.ease));

    rotateAngle = Tween<double>(
      begin: 0,
      end: math.pi / 12,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.ease));
  }

  @override
  void dispose() {
    controller.dispose();
  }
}

extension CardAnimationControllerEx on CardAnimationController {
  double _getHorizontalSign(SwipeDirection direction) {
    switch (direction) {
      case SwipeDirection.startToEnd:
        return 1;
      case SwipeDirection.endToStart:
        return -1;
    }
  }

  double getLeft(SwipeDirection direction) {
    return offset.value * _getHorizontalSign(direction);
  }

  double getRight(SwipeDirection direction) {
    return offset.value * _getHorizontalSign(direction) * -1;
  }

  double getRotateAngle(SwipeDirection direction) {
    return rotateAngle.value * _getHorizontalSign(direction);
  }
}
