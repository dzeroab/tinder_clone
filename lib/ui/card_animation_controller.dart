import 'dart:math' as math;

import 'package:flutter/material.dart';

enum UserEmotionAction {
  like,
  pass,
}

abstract class CardAnimationController {
  factory CardAnimationController() => _CardAnimationControllerImpl();

  AnimationController get controller;

  Animation<double> get rotateAngle;

  late UserEmotionAction emotionAction;

  void initialize(TickerProvider vsync, VoidCallback onDone);

  void dispose();

  void onDragDown(DragDownDetails details);

  void onDragUpdate(double screenWidth, DragUpdateDetails details);

  void onDragEnd(DragEndDetails details);
}

///
class _CardAnimationControllerImpl implements CardAnimationController {
  @override
  late final AnimationController controller;
  @override
  late final Animation<double> rotateAngle;

  @override
  UserEmotionAction emotionAction = UserEmotionAction.like;

  double _dragStartX = 0;

  @override
  void initialize(TickerProvider vsync, VoidCallback onDone) {
    controller = AnimationController(duration: const Duration(milliseconds: 400), vsync: vsync);

    controller.addListener(() {
      if (controller.isCompleted) {
        onDone();
        controller.reset();
      }
    });

    rotateAngle = Tween<double>(
      begin: 0,
      end: math.pi / 12,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.ease));
  }

  @override
  void dispose() {
    controller.dispose();
  }

  @override
  void onDragDown(DragDownDetails details) {
    _dragStartX = details.globalPosition.dx;
  }

  @override
  void onDragUpdate(double screenWidth, DragUpdateDetails details) {
    final dragPercentage = (details.globalPosition.dx - _dragStartX) / screenWidth;
    controller.value = dragPercentage < 0 ? dragPercentage * -1 : dragPercentage;

    emotionAction = dragPercentage < 0 ? UserEmotionAction.pass : UserEmotionAction.like;
  }

  @override
  void onDragEnd(DragEndDetails details) {
    if (controller.value > 0.35) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }
}

extension CardAnimationControllerEx on CardAnimationController {
  double _getHorizontalSign(UserEmotionAction action) {
    switch (action) {
      case UserEmotionAction.like:
        return 1;
      case UserEmotionAction.pass:
        return -1;
    }
  }

  double getLeft(double screenWidth) {
    return screenWidth * controller.value * _getHorizontalSign(emotionAction);
  }

  double getRight(double screenWidth) {
    return screenWidth * controller.value * _getHorizontalSign(emotionAction) * -1;
  }

  double getRotateAngle() {
    return rotateAngle.value * _getHorizontalSign(emotionAction);
  }
}
