import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreen4 extends StatefulWidget {
  @override
  _SingleScreen4State createState() => _SingleScreen4State();
}

class _SingleScreen4State extends State<SingleScreen4> {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
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
                                "آیا اندومتریوز می تواند علت نازایی باشد؟",
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
                             "اندومتریوز یک بیماری لگنی است که در خانمهای نابارور شایعتر است. در حدود هفتاد درصد از خانمهایی که اندومتریوز متوسط یا خفیف دارند، بدون مشکل باردار میشوند"
                             "اندومتریوز به دلایل متفاوتی میتواند سبب ناباروری شود:"
                              "\n📌اثر بر ساختمان و آناتومی لگن"
                              "اندومتریوز میتواند با ایجاد کیست در تخمدان و چسبندگی بین رحم و تخمدان و سایر اعضا لگن همراه باشد."
                            "این چسبندگی ها، ساختمان و عملکرد طبیعی رَحِم و تخمدان را تحت تاثیر قرار میدهند."
                            "\n📌اثرات هورمونی اندومتریوز"
                            "اندومتریوز می تواند با ترشح مواد التهابی اثرات منفی بر تخمک، اعضای لگنی و لانه گزینی جنین داشته باشد."
                            "وجه داشته باشید که این عوارض در نوع شدید اندومتریوز شایعتر است."
                            ,
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
