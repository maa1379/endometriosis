import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreen8 extends StatefulWidget {
  @override
  _SingleScreen8State createState() => _SingleScreen8State();
}

class _SingleScreen8State extends State<SingleScreen8> {
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
                          "",
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
                            "مراکز درمانی اندومتریوز کدام بیمارستان ها هستند؟",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        expanded: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            for (var _ in Iterable.generate(1))
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                        "📌بیمارستان رسول اکرم"
                                        "\n"
                                        "\n"
                                        "📌مرکز ابن سینا"
                                        "\n"
                                        "\n"
                                        "📌بیمارستان آرش"
                                        "\n"
                                        "\n"
                                    ,
                                    softWrap: true,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.fade,
                                  ),
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
        ],
      ),
    );
  }

}
