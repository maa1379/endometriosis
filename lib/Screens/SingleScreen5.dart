import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreen5 extends StatefulWidget {
  @override
  _SingleScreen5State createState() => _SingleScreen5State();
}

class _SingleScreen5State extends State<SingleScreen5> {
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
                                "بررسی های تشخیصی اندومتریوز",
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
                              "تشخیص این بیماری از راههای زیر امکان پذیر است:"
                                  "\n📌شرح حال بیمار و معاینه ی لگنی"
                                  "وجود سابقه ی قاعدگی ها یا رابطه ی زناشویی دردناک،لکه بینی قبل از شروع عادت ماهیانه ."
                                  "در معاینه ی لگنی وجود درد در هنگام معاینه و یا لمس ِبرجستگی های اندومتریوز در لگن ."
                                  "\n📌سونوگرافی: سونوگرافی نمیتواند برای بررسی جسبندگی ها کمک کننده باشد ولی وجود نمای کیستهای اندومتریوز در تخمدان به تشخیص کمک میکند."
                                  "\n📌آزمایش خون: اندازه گیری CA125 میتواند کمک کننده باشد ولی یک آزمایش اختصاصی نیست."
                                  "\n📌جراحی لاپاروسکوپی: در واقع تشخیص قطعی اندومتریوز از طریق دید مستقیم با دوربین های مدار بسته در هنگام عمل لاپاروسکوپی امکان پذیر است. به کمک لاپاراسکوپی می‌توان اطلاعاتی در مورد محل، میزان گسترش و ابعاد بافت‌های جایگزین شده اندومتریوم جمع آوری کرد. اگر نیاز به برداشت آندومتریوز و یا بافت اسکار باشد، جراح از یکی از تکنیک های بریدن و یا برداشتن بافت از طریق پرتو لیزر یا الکتروکوتر استفاده می کند و در حین عمل از نسوج مشکوک نمونه گیری شده و بر اساس جواب آسیب شناسی، تشخیص قطعی داده میشود."
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
