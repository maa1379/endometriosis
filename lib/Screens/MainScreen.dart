import 'package:auto_size_text/auto_size_text.dart';
import 'package:endometriosis/Models/MainModel.dart';
import 'package:endometriosis/helpers/NavHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'SingleScreen2.dart';
import 'SingleScreen3.dart';
import 'SingleScreen4.dart';
import 'SingleScreen5.dart';
import 'SingleScreen7.dart';
import 'SingleScreen8.dart';
import 'Singlescreen6.dart';
import 'SingleScreen.dart';


class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Size size;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<MainModel> mainList = [
    MainModel(
      id: 1,
      icon: "assets/images/reproductive.png",
      text: "بیماری اندومتریوز چیست؟",
      widget: SingleScreen(),
    ),
    MainModel(
      id: 2,
      icon: "assets/images/reproductive.png",
      text: "علاِئم آن را از کجا بفهیم؟",
      widget: SingleScreen2(),
    ),
    MainModel(
      id: 1,
      icon: "assets/images/reproductive.png",
      text: "علت درد در اندومتریوز پیست؟",
      widget: SingleScreen3(),
    ),
    MainModel(
      id: 1,
      icon: "assets/images/pregnant.png",
      text: "آیا اندومتریوز میتواند علت نازایی باشد؟",
      widget: SingleScreen4(),
    ),
    MainModel(
      id: 1,
      icon: "assets/images/reproductive.png",
      text: "برسی های تشخیصی",
      widget: SingleScreen5(),
    ),
    MainModel(
      id: 1,
      icon: "assets/images/reproductive.png",
      text: "روش های درمانی",
      widget: SingleScreen6(),
    ),
    MainModel(
      id: 1,
      icon: "assets/images/reproductive.png",
      text: "درمان‌های خانگی",
      widget: SingleScreen7(),
    ),
    MainModel(
        id: 1,
        icon: "assets/images/reproductive.png",
        text: "معرفی مراکز درمانی",
        widget: SingleScreen8()),
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: _key,
        backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            leading:  GestureDetector(
                onTap: (){
                  _key.currentState.openDrawer();
                },
                child: Icon(Icons.menu , color: Colors.white,)),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.black,
            title: Text("اندومتریوز"),
          ),
          body: Container(
            height: size.height,
            width: size.width,
            margin: EdgeInsets.only(top: size.height * .06),
            child: _buildGridViewMeno(),
          )),
    );
  }


  _buildGridViewMeno() {
    return AnimationLimiter(
      child: GridView.builder(
          itemCount: mainList.length,
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            // mainAxisSpacing: 0.1
          ),
          itemBuilder: _buildSunListItem),
    );
  }


  Widget _buildSunListItem(BuildContext context, int index) {
    var item = mainList[index];
    return AnimationConfiguration.staggeredGrid(
      position: index,
      duration: const Duration(milliseconds: 500),
      delay: Duration(milliseconds: 100),
      columnCount: 3,
      child: ScaleAnimation(
        child: FadeInAnimation(
          child: GestureDetector(
            onTap: () {
              NavHelper.push(context, item.widget);
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                  vertical: size.height * .01, horizontal: size.width * .05),
              height: size.height * .18,
              width: size.width * .25,
              padding: EdgeInsets.symmetric(vertical: size.height * .01),
              decoration: BoxDecoration(
                  color: Color(0xffFFD700),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 2,
                      color: Colors.white70,
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Image.asset(item.icon),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: size.width * .02),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: size.height * .01),
                        child: AutoSizeText(
                          item.text,
                          maxFontSize: 22,
                          minFontSize: 10,
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            inherit: false,
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
