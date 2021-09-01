import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreen7 extends StatefulWidget {
  @override
  _SingleScreen7State createState() => _SingleScreen7State();
}

class _SingleScreen7State extends State<SingleScreen7> {
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
                                "درمان‌های خانگی",
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
                             "اگر دردهای دائمی داشتید و یا تا ظاهر شدن اثرات درمان به زمان نیاز است، می‌توانید در منزل کارهایی انجام دهید تا احساس بهتری داشته باشید:"
                             "حمام گرم و حوله گرم می‌تواند به ریلکس شدن عضلات لگن و کاهش کرامپ و درد کمک کند."
                              "استفاده از داروهای مسکن بدون نسخه"
                              "از جمله ایبوپروفن یا ناپروکسن"
                              "کاهش مصرف کافئین و الکل که می‌توانند باعث بدتر شدن علائم شوند."

                            "ورزش می تواند سبب بهبود علائم اندومتریوز شود. ورزش هایی مانند پیاده روی، شنا، حرکات موزون، یوگا و مدیتیشن به مدت 60 دقیقه در روز سبب حفظ سلامت شما می شود. گاهی انجام ورزش هایی از قبیل دویدن و پریدن ممکن است علائم اندومتریوز را افزایش دهند، بنابراین در صورت تمایل به انجام این ورزش ها بهتر است با پزشک خود مشورت نمایید."
                            "با اینکه مطالعات کمی بر روی درمان‌های کمکی اندومتریوز وجود دارد، برخی بیماران کاهش درد را پس از استفاده از طب سوزنی گزارش کرده اند."
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
