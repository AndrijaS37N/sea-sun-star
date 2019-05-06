import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import 'dart:math' as math;

// Medium article for Flutter animations: https://medium.com/flutter-community/flutter-animation-has-never-been-easier-part-1-e378e82b2508

class AnimatedSun extends StatelessWidget {
  Widget build(BuildContext context) {
    return Animator(
      tween: Tween<double>(begin: 0, end: 2 * math.pi),
      duration: Duration(seconds: 7),
      repeats: 1,
      builder: (anim) => Transform(
            transform: Matrix4.rotationZ(anim.value),
            alignment: Alignment(0.0, 3),
            child: Image(
                image: new AssetImage("assets/sun.png"),
                width: 400,
                height: 400),
          ),
    );
  }
}

class AnimatedStar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Animator(
      tween: Tween<double>(begin: 0.8, end: 1.2),
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 1),
      cycles: 0,
      builder: (anim) => Transform.scale(
            scale: anim.value,
            child: Image(
                image: new AssetImage("assets/star.png"),
                width: 80,
                height: 80)
          ),
    );
  }
}
