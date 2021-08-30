import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SingleScreen extends StatefulWidget {

  @override
  _SingleScreenState createState() => _SingleScreenState();
}

class _SingleScreenState extends State<SingleScreen> {
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
                    color: Colors.black,
                      boxShadow: [
                        BoxShadow(color: Colors.amber,
                          blurRadius: 10,
                          spreadRadius: 2
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        AutoSizeText(
                         "بیماری اندومتریوز چی هست ؟",
                          maxFontSize: 22,
                          minFontSize: 10,
                          textAlign: TextAlign.start,
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        AutoSizeText(
                          "اندومتریوز یکی از بیماریهای شایع زنان است که 17-2 درصد زنان سنین باروری رو تحت تأثیر قرار می دهد. 70-60 درصد زنان مبتلا به اندومتریوز از برخی اختلالات مانند کیفیت زندگی نامناسب، افسردگی و اضطراب، دردهای حاد و مزمن، دردهای لگنی، خستگی، قاعدگی دردناک، خونریزی شدید قاعدگی، درد هنگام نزدیکی و نازایی رنج می برند."
                              "این بیماری می‌تواند با آغاز سن بلوغ در دختران ایجاد شود، بنابراین مادرانی که دختران نوجوان و جوان دارند نباید نسبت به علائمی مانند دردهای شدید قاعدگی بی‌توجه باشند و لازم است بیماری اندومتریوز از همان سنین نوجوانی در تشخیصهای پزشکی مدنظر قرار گیرد."
                              "  بیماری اندومتریوز (Endometriosis ) با کاشته شدن بافت دیواره ی داخلی رحم (اندومتر) در مناطق غیر طبیعی میتواند بدلیل جریان ِبرگشتی ِخون ِقاعدگی، از طریق لوله های رَحِمی به داخل شکم و حفره ی لگن اتفاق بیفتد‌."
                          ,
                          maxFontSize: 22,
                          minFontSize: 10,
                          textAlign: TextAlign.
                          ,
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
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



