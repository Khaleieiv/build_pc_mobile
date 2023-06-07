import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

enum AnimationTrigger {
  onPageLoad,
  onActionTrigger,
}

class AnimationInfo {
  final AnimationTrigger trigger;
  final List<Effect<dynamic>> effects;
  final bool applyInitialState;
  final bool loop;
  final bool reverse;
  AnimationController? controller;

  AnimationInfo({
    required this.trigger,
    required this.effects,
    this.loop = false,
    this.reverse = false,
    this.applyInitialState = true,
  });
}

extension AnimatedWidgetExtension on Widget {
  Widget animateOnPageLoad(AnimationInfo animationInfo) => Animate(
    effects: animationInfo.effects,
    child: this,
    onPlay: (controller) => animationInfo.loop
        ? controller.repeat(reverse: animationInfo.reverse)
        : null,
    onComplete: (controller) => !animationInfo.loop && animationInfo.reverse
        ? controller.reverse()
        : null,
  );

  Widget animateOnActionTrigger(
      AnimationInfo animationInfo, {
        bool hasBeenTriggered = false,
      }) =>
      hasBeenTriggered || animationInfo.applyInitialState
          ? Animate(
        controller: animationInfo.controller,
        autoPlay: false,
        effects: animationInfo.effects,
        child: this,
      )
          : this;
}
