import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'ColorHelpers.dart';

class AlertHelpers {
  static noDesignAlertDialog({
    BuildContext context,
    Size size,
  }) {
    showDialog(
      context: context,
      builder: (_) => Directionality(
        textDirection: TextDirection.rtl,
        child: AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          elevation: 50.0,
          content: Container(
            height: size.height * .5,
            width: double.maxFinite,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.0)),
            child: Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: size.height * .35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(size.width * .02),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(
                                Icons.close,
                                color: ColorHelpers.mainColors,
                              )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * .01),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: AutoSizeText(
                            "اطلاعیه",
                            maxFontSize: 22,
                            minFontSize: 8,
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: size.height * .3,
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                "از اینکه برای ما وقت گذاشتید و ما را در \nاین تحقیق یاری نمودید بسیار متشکریم\n"
                                "امیدوارم که مطالب این نرم افزار\n برایتان مثمر ثمر بوده باشد\n"
                                "برای ارتقا و بهبود نرم افزار میخواهیم که شما نرم افزار\n را مورد ارزیابی قرار داده و به سوالات ما امتیاز دهید\n"
                                "برای ارسال پاسخ های خود لطفا گوشی خود\n را به اینترنت متصل کنید\n"
                                "از محبت و یاری شما سپاسگذاریم\n",
                                maxFontSize: 22,
                                minFontSize: 4,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: size.height * .06,
                            width: size.width * .4,
                            color: Colors.yellow,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text("رد کردن"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
