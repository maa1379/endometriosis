import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreen6 extends StatefulWidget {
  @override
  _SingleScreen6State createState() => _SingleScreen6State();
}

class _SingleScreen6State extends State<SingleScreen6> {
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
                                "روش های درمانی",
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
                              "درمان اندومتریوز معمولا دارویی یا جراحی است. انتخاب درمان مناسب به شدت علائم و نشانه‌ها و تمایل بیمار به باردار شدن بستگی دارد. معمولا پزشک ابتدا درمان‌های دارویی را پیشنهاد می‌کند و اگر این درمان‌ها شکست خوردند، روش‌های جراحی انجام می‌شوند. هدف از درمان اندومتریوز برطرف شدن علائم و درصورت تمایل بیمار افزایش احتمال باروری است."
                              "داروهای درد: معمولا مسکن‌های بدون نسخه از جمله ضد التهاب‌های غیراستروئیدی مانند ایبوپروفن یا  HYPERLINK https://doctoreto.com/blog/%d8%af%d8%a7%d8%b1%d9%88%db%8c-%d9%86%d8%a7%d9%be%d8%b1%d9%88%da%a9%d8%b3%d9%86/ناپروکسن سدیم برای کاهش درد کرامپی قاعدگی توصیه می‌شوند."
                            "درمان هورمونی: در مورد افرادی که تمایلی به بارداری ندارند، این درمان درکنار مسکن‌ها پیشنهاد می‌شوند. مکمل‌های هورمونی می‌توانند با کاهش رشد بافت اندومتریوم نابجا و جلوگیری از ایجاد بافت نابجای جدید باعث کاهش یا قطع درد شوند اما درمان دائمی نیستند و با قطع داروها علائم ممکن است بازگردند."
                            "جراحی: جراحی در مورد بیمارانی که علائم شدید دارند و یا بیمارانی که دچار انسداد لوله‌ها، روده‌ها یا مثانه َشده باشند و همچنین در مورد بیمارانی که اختلال ساختاری در سیستم تناسلی دارند، می‌تواند درمان انتخابی باشد. جراحی به دو دسته،  تقسیم می شود."
                              "جراحی محافظتی : در آن رحم و تخمدان‌ها حفظ می‌شوند"
                            "جراحی مطلق:  در آن رحم با یا بدون تخمدان‌ها برداشته می‌شود، تقسیم می‌شود"
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
