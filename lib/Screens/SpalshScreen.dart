import 'package:auto_size_text/auto_size_text.dart';
import 'package:endometriosis/helpers/NavHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        color: Colors.white,
        child: Column(
          children: [
           Padding(
             padding: EdgeInsets.symmetric(horizontal: size.width * .1 , vertical: size.height * .1),
             child: Image.asset("assets/images/logo.png"),
           ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .1 ,),
              child: AutoSizeText(
                "به برنامه کاربردی آموزشی اندومتریوز خوش آمدید",
                maxFontSize: 22,
                minFontSize: 10,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  inherit: false,
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Lottie.asset("assets/anim/loading.json",width: size.width * .5),
          ],
        ),
      ),
    );
  }
}
