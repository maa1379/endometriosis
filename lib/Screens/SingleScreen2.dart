import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable/expandable.dart';
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
                        child: Image.asset("assets/images/alaem.jpg",),
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
                          "در بسیاری از موارد بی علامت است.در افرادی که علامتدار هستند،شامل این موارد است:",
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
                            "علائم اندومتریوز چیست؟",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        expanded: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            _buildCategoryBox1(),
                            _buildCategoryBox2(),
                            SizedBox(height: size.height * .02,),
                            for (var _ in Iterable.generate(1))
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "\n"
                                  "📌مشکلات روده ای و ادراری شامل درد، اسهال، یبوست و نفخ"
                                  "\n"
                                  "\n"
                                  "📌نزدیکی:"
                                  "\n"
                                  "دردناک درد حین یا بعد از رابطه جنسی در اندومتریوز رایج است"
                                  "\n"
                                  "\n"
                                  "📌نازایی:"
                                  "\n"
                                  "گاهی، اندومتریوز اولین بار هنگامی که فرد به دنبال درمان نازایی است، تشخیص داده می‌شود"
                                  ,
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
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
                        "مهمترین علامت اندومتریوز است.میتواند قبل و یا...",
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
                          "📌درد لگن:",
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
                                    "مهمترین علامت اندومتریوز است.میتواند قبل و یا در هنگام عادت ماهیانه باشد.شدت درد اغلب بدنبال قاعدگی کم میشود."
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
                        "اگر چه بسیاری از خانم ها در طول دوره قاعدگی دل درد را  تجربه می کنند...",
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
                          "📌قاعدگی های دردناک:",
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
                                    "اگر چه بسیاری از خانم ها در طول دوره قاعدگی دل درد را  تجربه می کنند، عموما خانم های مبتلا به اندومتریوز درد قاعدگی به مراتب بدتری از حد معمول را تجربه می کنند. آن ها همچنین می گویند که درد در طول زمان افزایش پیدا می کند."
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
                        "فرد ممکن است گاهی قاعدگی‌هایی با خون ریزی شدید داشته باشد و یا بین قاعدگی‌هایش...",
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
                          "📌سایر علائم و نشانه‌ها:",
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
                                "فرد ممکن است گاهی قاعدگی‌هایی با خون ریزی شدید داشته باشد و یا بین قاعدگی‌هایش خونریزی داشته باشد. خستگی، اسهال، یبوست، نفخ یا تهوع، به خصوص در طول دوره قاعدگی است."
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
        ],
      ),
    );
  }
}
