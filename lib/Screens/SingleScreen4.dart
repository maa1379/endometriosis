import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreen4 extends StatefulWidget {
  @override
  _SingleScreen4State createState() => _SingleScreen4State();
}

class _SingleScreen4State extends State<SingleScreen4> {
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
                          "اندومتریوز یک بیماری لگنی است که در خانمهای نابارور شایعتر است. در حدود هفتاد درصد از خانمهایی...",
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
                            "آیا اندومتریوز می تواند علت نازایی باشد؟",
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
                                  "اندومتریوز یک بیماری لگنی است که در خانمهای نابارور شایعتر است. در حدود هفتاد درصد از خانمهایی که اندومتریوز متوسط یا خفیف دارند، بدون مشکل باردار میشوند."
                                  "\n"
                                  "\n"
                                  "اندومتریوز به دلایل متفاوتی میتواند سبب ناباروری شود:"
                                  ,
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            _buildCategoryBox1(),
                            _buildCategoryBox2(),
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
                        "اندومتریوز میتواند با ایجاد کیست در تخمدان و چسبندگی بین رحم و تخمدان...",
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
                          "📌اثر بر ساختمان و آناتومی لگن:",
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
                                "اندومتریوز میتواند با ایجاد کیست در تخمدان و چسبندگی بین رحم و تخمدان و سایر اعضا لگن همراه باشد.این چسبندگی ها، ساختمان و عملکرد طبیعی رَحِم و تخمدان را تحت تاثیر قرار میدهند."
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
                        "اندومتریوز می تواند با ترشح مواد التهابی اثرات منفی بر تخمک، اعضای لگنی...",
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
                          "📌اثرات هورمونی اندومتریوز:",
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
                                "اندومتریوز می تواند با ترشح مواد التهابی اثرات منفی بر تخمک، اعضای لگنی و لانه گزینی جنین داشته باشد.توجه داشته باشید که این عوارض در نوع شدید اندومتریوز شایعتر است."
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
