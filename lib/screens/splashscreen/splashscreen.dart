import 'dart:ui';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heka_app/screens/splashscreen/splashlocalstyle.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(new Duration(milliseconds: 2500), () {
      Navigator.pushNamed(context, "/infopage");
    });

    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1900));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    animationController.addListener(() {
      print(animationController.value);
    });
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            if (animationController.isCompleted) {
              print("animation has completed");
            }
            return buildTransformRotation();
          },
          child: buildTransformRotation(),
          //TODO: Set spinning effect
        ),
      ),
    );
  }

  /// [buildTransformRotation] return a rotation object
  Transform buildTransformRotation() {
    return Transform.rotate(
        angle: pi * 2 * animationController.value,
        child:
            Container(child: Image.asset(SplashScreenLocalStyle.getImageName)));
  }
}
