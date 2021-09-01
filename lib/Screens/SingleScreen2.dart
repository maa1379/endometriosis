import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreen2 extends StatefulWidget {
  @override
  _SingleScreen2State createState() => _SingleScreen2State();
}

class _SingleScreen2State extends State<SingleScreen2> {
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
                                "علائم اندومتریوز چیست ؟",
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
                              "در بسیاری از موارد بی علامت است.در افرادی که علامتدار هستند،شامل این موارد است"
                                  "درد لگن"
                                  "مهمترین علامت اندومتریوز است.میتواند قبل و یا در هنگام عادت ماهیانه باشد.شدت درد اغلب بدنبال قاعدگی کم میشود."
                                  "قاعدگی های دردناک"
"اگر چه بسیاری از خانم ها در طول دوره قاعدگی دل درد را تجربه می کنند، عموما خانم های مبتلا به آندومتریوز درد قاعدگی به مراتب بدتری از حد معمول را تجربه می کنند"
                              "آن ها همچنین می گویند که درد در طول زمان افزایش پیدا می کند."
                              "مشکلات روده ای و ادراری شامل درد، اسهال، یبوست و نفخ"
                             " نزدیکی دردناک"
                           " درد حین یا بعد از رابطه جنسی در اندومتریوز رایج است."
                            "نازایی"
                            "گاهی، اندومتریوز اولین بار هنگامی که فرد به دنبال درمان نازای"
                              "ی است، تشخیص داده می‌شود"
                              "سایر علائم و نشانه‌ها: فرد ممکن است گاهی قاعدگی‌هایی با خون ریزی شدید داشته باشد و یا بین قاعدگی‌"
                              "هایش خونریزی داشته باشد. خستگی، اسهال، یبوست، ن"
                              "فخ یا تهوع، به خصوص در طول دوره قاعدگی است.",
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
