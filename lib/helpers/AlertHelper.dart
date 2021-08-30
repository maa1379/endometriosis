import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'ColorHelpers.dart';


class AlertHelpers {


  static noDesignAlertDialog(
      {BuildContext context,
      Size size,
      Function camFunc,
      Function galleryFunc}) {
    showDialog(
      context: context,
      builder: (_) => Directionality(
        textDirection: TextDirection.rtl,
        child: AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          elevation: 50.0,
          content: Container(
            height: size.height * .2,
            width: double.maxFinite,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.0)),
            child: Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: size.height * .2,
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
                            "انتحاب کنید",
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
                          height: size.height * .06,
                          width: size.width,
                          margin:
                              EdgeInsets.symmetric(horizontal: size.width * .1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  AutoSizeText(
                                    "گالری",
                                    maxFontSize: 22,
                                    minFontSize: 8,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      galleryFunc();
                                    },
                                    iconSize: size.width * .08,
                                    icon: Icon(
                                      Icons.photo_library_outlined,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AutoSizeText(
                                    "دوربین",
                                    maxFontSize: 22,
                                    minFontSize: 8,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      camFunc();
                                    },
                                    iconSize: size.width * .08,
                                    icon: Icon(
                                      Icons.camera_alt_outlined,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ],
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
