import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum UserEmotionAction {
  like,
  pass,
}

extension UserEmotionActionEx on UserEmotionAction {
  Color get color {
    switch (this) {
      case UserEmotionAction.like:
        return Colors.red;
      case UserEmotionAction.pass:
        return Colors.yellow;
    }
  }

  String get text {
    switch (this) {
      case UserEmotionAction.like:
        return "LIKE";
      case UserEmotionAction.pass:
        return "PASS";
    }
  }

  IconData get icon {
    switch (this) {
      case UserEmotionAction.like:
        return FontAwesomeIcons.heart;
      case UserEmotionAction.pass:
        return Icons.close;
    }
  }
}

abstract class CardAnimationController {
  factory CardAnimationController() => _CardAnimationControllerImpl();

  AnimationController get controller;

  Animation<double> get rotateAngle;

  late UserEmotionAction emotionAction;

  bool get isDragMode;

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
  bool isDragMode = false;

  @override
  UserEmotionAction emotionAction = UserEmotionAction.like;

  double _dragStartX = 0;

  @override
  void initialize(TickerProvider vsync, VoidCallback onDone) {
    controller = AnimationController(duration: const Duration(milliseconds: 400), vsync: vsync);

    controller.addListener(() {
      if (controller.isCompleted) {
        isDragMode = false;
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
    isDragMode = true;
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

  double getRemarkVisible(UserEmotionAction action) {
    return isDragMode && action == emotionAction && controller.value != 0 ? math.min(controller.value + 0.2, 1.0) : 0;
  }
}
