import 'package:expandable/expandable.dart';
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
                          "تشخیص این بیماری از راه های زیر امکان پذیر است:",
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
                            "اندومتریوز چگونه تشخیص داده می شود؟",
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
                                  "تشخیص این بیماری از راه های زیر امکان پذیر است:"
                                  "\n"
                                  "\n"
                                  "📌آزمایش خون:"
                                  "\n"
                                  "اندازه گیری CA125 میتواند کمک کننده باشد ولی یک آزمایش اختصاصی نیست."
                                  "\n"
                                  ,
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            _buildCategoryBox1(),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            _buildCategoryBox2(),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            _buildCategoryBox3(),
                            SizedBox(
                              height: size.height * .03,
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
                        "وجود سابقه ی قاعدگی ها یا رابطه ی زناشویی دردناک،لکه بینی قبل...",
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
                          "📌شرح حال بیمار و معاینه ی لگنی:",
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
                                "وجود سابقه ی قاعدگی ها یا رابطه ی زناشویی دردناک،لکه بینی قبل از شروع عادت ماهیانه . در معاینه ی لگنی وجود درد در هنگام معاینه و یا لمس ِبرجستگی های اندومتریوز در لگن ."
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
                        "سونوگرافی نمیتواند برای بررسی جسبندگی ها کمک کننده باشد ولی...",
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
                          "📌سونوگرافی:",
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
                                "سونوگرافی نمیتواند برای بررسی جسبندگی ها کمک کننده باشد ولی وجود نمای کیستهای اندومتریوز در تخمدان به تشخیص کمک میکند."
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
                  Image.asset("assets/images/lapa.webp"),
                  ScrollOnExpand(
                    scrollOnExpand: true,
                    scrollOnCollapse: false,
                    child: ExpandablePanel(
                      collapsed: Text(
                        "در واقع تشخیص قطعی اندومتریوز از طریق دید مستقیم با دوربین های مدار بسته در هنگام عمل لاپاروسکوپی...",
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
                          "📌جراحی لاپاروسکوپی:",
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
                                "در واقع تشخیص قطعی اندومتریوز از طریق دید مستقیم با دوربین های مدار بسته در هنگام عمل لاپاروسکوپی امکان پذیر است. به کمک لاپاراسکوپی می‌توان اطلاعاتی در مورد محل، میزان گسترش و ابعاد بافت‌های جایگزین شده اندومتریوم جمع آوری کرد. اگر نیاز به برداشت اندومتریوز و یا بافت اسکار باشد، جراح از یکی از تکنیک های بریدن و یا برداشتن بافت از طریق پرتو لیزر یا الکتروکوتر استفاده می کند و در حین عمل از نسوج مشکوک نمونه گیری شده و بر اساس جواب آسیب شناسی، تشخیص قطعی داده میشود."
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
