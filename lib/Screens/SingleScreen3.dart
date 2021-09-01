import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreen3 extends StatefulWidget {
  @override
  _SingleScreen3State createState() => _SingleScreen3State();
}

class _SingleScreen3State extends State<SingleScreen3> {
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
                                "علت درد در اندومتریوز چیست ؟",
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
                              "شدت درد در اندومتریوز متغیر است. در بعضی موارد خفیف و گاهی بسیار شدید است دلایل زیر بعنوان علت درد عنوان شده اند:"
"\n 📌 کاشته شدن بافت اندومتر (لایه ی داخلی رحم) در مناطقی که تعداد زیادی عصب وجود دارد"
"\n📌 آزاد شدن ِموادی از بافت اندومتریوز ایجاد شده که واسطه ی ایجاد درد هستند"
"\n📌 وقتی بافتهای اندومتریوز اطراف یک ارگان را گرفتار کرده و آن را تحت فشار قرار می دهد"
"\n📌 باید توجه داشت که در اندومتریوز شدت بیماری با شدت درد ارتباط مستقیمی ندارد، بعبارتی شدت درد علامتی از شدید بودن بیماری نیست",
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
