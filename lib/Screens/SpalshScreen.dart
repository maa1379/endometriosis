import 'package:endometriosis/helpers/NavHelper.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Size size;

  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 6),
    ).then(
      (value) {
        NavHelper.pushR(context, HomeScreen());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.black87,
        child: Center(
          child: Lottie.asset(
            "assets/anim/loading.json",
          ),
        ),
      ),
    );
  }
}
