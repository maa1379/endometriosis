import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
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
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: size.height * .05),
                    height: size.height * .1,
                    width: size.width * .1,
                    decoration: BoxDecoration(
                    color: Colors.amber,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomRight: Radius.circular(100))
                    ),
                    child: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: size.height * .05,),
                      Container(
                        margin: EdgeInsets.all(size.width * .05),
                        child: Image.asset("assets/images/ando.jpg"),
                      ),
                      _buildCategoryDetail(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildCategoryDetail() {
    return Container(
      width: size.width,
      margin: EdgeInsets.only(top: size.height * .03),
      child: Column(
        children: [
          ExpandableNotifier(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .05, vertical: size.height * .02),
              child: Card(
                elevation: 3,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: <Widget>[
                    ScrollOnExpand(
                      scrollOnExpand: true,
                      scrollOnCollapse: false,
                      child: ExpandablePanel(
                        collapsed: Text(
                          "اندومتریوز یکی از بیماریهای شایع زنان است که 17-2 درصد زنان سنین باروری رو تحت تأثیر قرار می دهد. 70-60 درصد زنان مبتلا به اندومتریوز از برخی اختلالات مانند کیفیت زندگی نامناسب...",
                          softWrap: true,
                          maxLines: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                        theme: const ExpandableThemeData(
                          headerAlignment:
                              ExpandablePanelHeaderAlignment.center,
                          tapBodyToCollapse: true,
                        ),
                        header: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "بیماری اندومتریوز چیست؟",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        expanded: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            for (var _ in Iterable.generate(1))
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "اندومتریوز یکی از بیماریهای شایع زنان است که 17-2 درصد زنان سنین باروری رو تحت تأثیر قرار می دهد. 70-60 درصد زنان مبتلا به اندومتریوز از برخی اختلالات مانند کیفیت زندگی نامناسب، افسردگی و اضطراب، دردهای حاد و مزمن، دردهای لگنی، خستگی، قاعدگی دردناک، خونریزی شدید قاعدگی، درد هنگام نزدیکی و نازایی رنج می برند."
                                  "\n"
                                  "\n"
                                  "\n"
                                  "این بیماری می‌تواند با آغاز سن بلوغ در دختران ایجاد شود، بنابراین مادرانی که دختران نوجوان و جوان دارند نباید نسبت به علائمی مانند دردهای شدید قاعدگی بی‌توجه باشند و لازم است بیماری اندومتریوز از همان سنین نوجوانی در تشخیص های پزشکی مدنظر قرار گیرد."
                                  "\n"
                                  "\n"
                                  "\n"
                                  "بیماری اندومتریوز (Endometriosis ) با کاشته شدن بافت دیواره ی داخلی رحم (اندومتر) در مناطق غیر طبیعی میتواند بدلیل جریان ِبرگشتی ِخون ِقاعدگی، از طریق لوله های رَحِمی به داخل شکم و حفره ی لگن اتفاق بیفتد‌.",
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                          ],
                        ),
                        builder: (_, collapsed, expanded) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            child: Expandable(
                              collapsed: collapsed,
                              expanded: expanded,
                              theme:
                                  const ExpandableThemeData(crossFadePoint: 0),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * .05,
          ),
        ],
      ),
    );
  }

}
