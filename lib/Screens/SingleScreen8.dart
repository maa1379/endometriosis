import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreen8 extends StatefulWidget {
  @override
  _SingleScreen8State createState() => _SingleScreen8State();
}

class _SingleScreen8State extends State<SingleScreen8> {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: Icon(null),
            actions: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_forward)),
              ),
            ],
            backgroundColor: Colors.amber,
          ),
          body: Container(
            height: size.height,
            width: size.width,
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width * .02),
                    margin: EdgeInsets.all(size.width * .05),
                    height: double.maxFinite,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.amber,
                            blurRadius: 10,
                            spreadRadius: 2),
                      ],
                    ),
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          Container(
                            height: size.height * .05,
                            width: size.width,
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * .05,
                                vertical: size.height * .02),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                  )
                                ]),
                            child: Center(
                              child: AutoSizeText(
                                "معرفی مراکز درمانی اندومتریوز",
                                maxFontSize: 22,
                                minFontSize: 10,
                                textAlign: TextAlign.start,
                                softWrap: true,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .05,
                          ),
                          Container(
                            height: size.height,
                            width: size.width,
                            child: AutoSizeText(
                              "\nبیمارستان رسول اکرم"
                              "\nمرکز ابن سینا"
                              "\nبیمارستان آرش",
                              maxFontSize: 22,
                              minFontSize: 10,
                              textAlign: TextAlign.center,
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * .02,
                          ),
                        ],
                      ),
                    ),
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
