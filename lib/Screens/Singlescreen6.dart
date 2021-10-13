import 'package:expandable/expandable.dart';
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
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: size.height * .05),
                    height: size.height * .1,
                    width: size.width * .1,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * .05,
                      ),
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
                          "درمان اندومتریوز معمولا دارویی یا جراحی است. انتخاب درمان مناسب به شدت علائم و نشانه‌ها و تمایل بیمار به باردار شدن بستگی دارد. معمولا پزشک ابتدا...",
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
                            "روش های درمانی اندومتریوز چگونه است؟",
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
                                  "درمان اندومتریوز معمولا دارویی یا جراحی است. انتخاب درمان مناسب به شدت علائم و نشانه‌ها و تمایل بیمار به باردار شدن بستگی دارد. معمولا پزشک ابتدا درمان‌های دارویی را پیشنهاد می‌کند و اگر این درمان‌ها شکست خوردند، روش‌های جراحی انجام می‌شوند. هدف از درمان اندومتریوز برطرف شدن علائم و درصورت تمایل بیمار افزایش احتمال باروری است."
                                  "\n"
                                  ,
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            _buildCategoryBox1(),
                            _buildCategoryBox3(),
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

  _buildCategoryBox1() {
    return Container(
      width: size.width,
      child: Column(
        children: [
          ExpandableNotifier(
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
                        "معمولا مسکن‌های بدون نسخه از جمله ضد التهاب‌های غیراستروئیدی مانند...",
                        softWrap: true,
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                      ),
                      theme: const ExpandableThemeData(
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        tapBodyToCollapse: true,
                      ),
                      header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "📌دارویی:",
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
                                "معمولا مسکن‌های بدون نسخه از جمله ضد التهاب‌های غیراستروئیدی مانند ایبوپروفن یا ناپروکسن سدیم برای کاهش درد کرامپی قاعدگی توصیه می‌شوند.",
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          _buildCategoryBox2(),
                        ],
                      ),
                      builder: (_, collapsed, expanded) {
                        return Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Expandable(
                            collapsed: collapsed,
                            expanded: expanded,
                            theme: const ExpandableThemeData(crossFadePoint: 0),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildCategoryBox2() {
    return Container(
      width: size.width,
      child: Column(
        children: [
          ExpandableNotifier(
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
                        "در مورد افرادی که تمایلی به بارداری ندارند، این درمان درکنار مسکن‌ها پیشنهاد...",
                        softWrap: true,
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                      ),
                      theme: const ExpandableThemeData(
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        tapBodyToCollapse: true,
                      ),
                      header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "📌درمان هورمونی:",
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
                                "در مورد افرادی که تمایلی به بارداری ندارند، این درمان درکنار مسکن‌ها پیشنهاد می‌شوند. مکمل‌های هورمونی می‌توانند با کاهش رشد بافت اندومتریوم نابجا و جلوگیری از ایجاد بافت نابجای جدید باعث کاهش یا قطع درد شوند اما درمان دائمی نیستند و با قطع داروها علائم ممکن است بازگردند.",
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                        ],
                      ),
                      builder: (_, collapsed, expanded) {
                        return Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Expandable(
                            collapsed: collapsed,
                            expanded: expanded,
                            theme: const ExpandableThemeData(crossFadePoint: 0),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildCategoryBox3() {
    return Container(
      width: size.width,
      child: Column(
        children: [
          ExpandableNotifier(
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
                        "جراحی در مورد بیمارانی که علائم شدید دارند و یا بیمارانی...",
                        softWrap: true,
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                      ),
                      theme: const ExpandableThemeData(
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        tapBodyToCollapse: true,
                      ),
                      header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "📌جراحی:",
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
                                "جراحی در مورد بیمارانی که علائم شدید دارند و یا بیمارانی که دچار انسداد لوله‌ها، روده‌ها یا مثانه َشده باشند و همچنین در مورد بیمارانی که اختلال ساختاری در سیستم تناسلی دارند، می‌تواند درمان انتخابی باشد. جراحی به دو دسته،  تقسیم می شود."
                                "\n"
                                "\n"
                                "📌جراحی محافظتی:"
                                "\n"
                                "در آن رحم و تخمدان‌ها حفظ می‌شوند"
                                "\n"
                                "\n"
                                "📌جراحی مطلق:"
                                "\n"
                                "در آن رحم با یا بدون تخمدان‌ها برداشته می‌شود، تقسیم می‌شود",
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                        ],
                      ),
                      builder: (_, collapsed, expanded) {
                        return Padding(
                          padding:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Expandable(
                            collapsed: collapsed,
                            expanded: expanded,
                            theme: const ExpandableThemeData(crossFadePoint: 0),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
