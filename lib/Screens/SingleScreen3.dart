import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreen3 extends StatefulWidget {
  @override
  _SingleScreen3State createState() => _SingleScreen3State();
}

class _SingleScreen3State extends State<SingleScreen3> {
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
                        child: Image.asset("assets/images/ando2.jpg"),
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
                          "شدت درد در اندومتریوز متغیر است. در بعضی موارد خفیف و گاهی بسیار شدید است ...",
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
                            "علت درد در اندومتریوز چیست؟",
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
                                  "شدت درد در اندومتریوز متغیر است. در بعضی موارد خفیف و گاهی بسیار شدید است دلایل زیر بعنوان علت درد عنوان شده اند:"
                                  "\n"
                                  "\n"
                                  "📌 کاشته شدن بافت اندومتر (لایه ی داخلی رحم) در مناطقی که تعداد زیادی عصب وجود دارد."
                                  "\n"
                                  "\n"
                                  "📌 آزاد شدن ِموادی از بافت اندومتریوز ایجاد شده که واسطه ی ایجاد درد هستند."
                                  "\n"
                                  "\n"
                                  "📌 وقتی بافتهای اندومتریوز اطراف یک ارگان را گرفتار کرده و آن را تحت فشار قرار می دهد."
                                  "\n"
                                  "\n"
                                  "📌 باید توجه داشت که در اندومتریوز شدت بیماری با شدت درد ارتباط مستقیمی ندارد، بعبارتی شدت درد علامتی از شدید بودن بیماری نیست."
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
          ),
          SizedBox(
            height: size.height * .05,
          ),
        ],
      ),
    );
  }
}
