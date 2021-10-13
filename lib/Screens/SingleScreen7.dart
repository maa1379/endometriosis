import 'package:expandable/expandable.dart';
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
                        child: Image.asset("assets/images/rejhim.jpg"),
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
                          "اگر دردهای دائمی داشتید و یا تا ظاهر شدن اثرات درمان به زمان نیاز است، می‌توانید...",
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
                            "روش های درمان خانگی اندومتریوز چگونه است؟",
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
                                  "اگر دردهای دائمی داشتید و یا تا ظاهر شدن اثرات درمان به زمان نیاز است، می‌توانید در منزل کارهایی انجام دهید تا احساس بهتری داشته باشید:"
                                      "\n"
                                      "\n"
                                      "📌حمام گرم و حوله گرم می‌تواند به ریلکس شدن عضلات لگن و کاهش کرامپ و درد کمک کند."
                                      "\n"
                                      "\n"
                                      "📌استفاده از داروهای مسکن بدون نسخه."
                                      "\n"
                                  "از جمله ایبوپروفن یا ناپروکسن "
                                      "\n"
                                      "\n"
                                      "📌کاهش مصرف کافئین و الکل که می‌توانند باعث بدتر شدن علائم شوند.",
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            _buildCategoryBox2(),
                            SizedBox(
            height: size.height * .02,
          ),
                            _buildCategoryBox1(),
                            SizedBox(
            height: size.height * .02,
          ),
                            _buildCategoryDetail2(),
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
                        "📌با اینکه مطالعات کمی بر روی درمان‌های کمکی اندومتریوز وجود دارد...",
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
                          "",
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
                                "📌با اینکه مطالعات کمی بر روی درمان‌های کمکی اندومتریوز وجود دارد، برخی بیماران کاهش درد را پس از استفاده از طب سوزنی گزارش کرده اند."
                                    "\n",
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
                        "📌ورزش می تواند سبب بهبود علائم اندومتریوز شود. ورزش هایی مانند پیاده...",
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
                          "",
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
                                "📌ورزش می تواند سبب بهبود علائم اندومتریوز شود. ورزش هایی مانند پیاده روی، شنا، حرکات موزون، یوگا و مدیتیشن به مدت 60 دقیقه در روز سبب حفظ سلامت شما می شود. گاهی انجام ورزش هایی از قبیل دویدن و پریدن ممکن است علائم اندومتریوز را افزایش دهند، بنابراین در صورت تمایل به انجام این ورزش ها بهتر است با پزشک خود مشورت نمایید."
                                    "\n",
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


  _buildCategoryDetail2() {
    return Container(
      width: size.width,
      // margin: EdgeInsets.only(top: size.height * .03),
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
                        "دلایل علمی کافی بنفع تاثیر رژیم غذایی بر پیشگیری یا درمان اندومتریوز وجود ندارد.",
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
                          "📌آیا رژیم غذایی بر پیشگیری یا درمان اندومتریوز موثر است؟",
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
                                "در یک ‌مطالعه دیده شد که مصرف سبزیجات و میوه ها با کاهش احتمال اندومتریوز و مصرف گوشت قرمز با افزایش آن همراهست ولی هنوز نیاز به مطالعات و بررسی های بیشتر هست"
                                ,
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
          SizedBox(
            height: size.height * .02,
          ),
        ],
      ),
    );
  }
}
