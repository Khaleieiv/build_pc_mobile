import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomLogoWidget extends StatelessWidget {
  const CustomLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const timeAnimation = 2000;

    return const Text(
      'PcBuild',
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 60,
        color: Color(0xFFFFFFFF),
      ),
    ).animate(onPlay: (controller) => controller.repeat())
        .shimmer(duration: timeAnimation.ms, color: const Color(0xFF311B92))
        .animate() // this wraps the previous Animate in another Animate
        .fadeIn(duration: timeAnimation.ms, curve: Curves.easeOutQuad)
        .slide();
  }
}
