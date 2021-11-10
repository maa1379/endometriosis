import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:endometriosis/Models/MainModel.dart';
import 'package:endometriosis/Screens/InvaiteFreend.dart';
import 'package:endometriosis/helpers/AlertHelper.dart';
import 'package:endometriosis/helpers/NavHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'ContactUsScreen.dart';
import 'ContactUsWidget.dart';
import 'RateAppScreen.dart';
import 'SingleScreen.dart';
import 'SingleScreen2.dart';
import 'SingleScreen3.dart';
import 'SingleScreen4.dart';
import 'SingleScreen5.dart';
import 'SingleScreen7.dart';
import 'SingleScreen8.dart';
import 'Singlescreen6.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size size;
  int _bottomNavIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  PageController pageController = PageController();
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
      icon: "assets/images/1.png",
      text: "علت درد در اندومتریوز چیست؟",
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
      text: "بررسی های تشخیصی",
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
      child: SafeArea(
        child: Scaffold(
          key: _key,
          drawer: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              height: size.height * .8,
              width: size.width * .8,
              color: Colors.red,
              child: Drawer(
                child: Padding(
                  padding: EdgeInsets.only(left: size.width * .1),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * .02,
                      ),
                      Image.asset(
                        "assets/images/logo.png",
                        width: size.width * .5,
                      ),
                      SizedBox(
                        height: size.height * .05,
                      ),
                      GestureDetector(
                        onTap: () {
                          NavHelper.push(
                            context,
                            ContactUsScreen(),
                          );
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * .05),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: size.width * .03,
                                      ),
                                      Text("ارتباط با ما"),
                                    ],
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,
                                    size: size.width * .04,
                                    color: Colors.amber),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * .05),
                              child: Divider(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      GestureDetector(
                        onTap: (){
                          NavHelper.push(context, AboutUsScreen());
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * .05),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.local_library_outlined,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: size.width * .03,
                                      ),
                                      Text("درباره ما"),
                                    ],
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,
                                    size: size.width * .04, color: Colors.amber),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * .05),
                              child: Divider(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      GestureDetector(
                        onTap: () {
                          NavHelper.push(context, SingleScreen8());
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * .05),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.local_hospital_outlined,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: size.width * .03,
                                      ),
                                      Text("مراکز درمانی"),
                                    ],
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,
                                    size: size.width * .04,
                                    color: Colors.amber),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * .05),
                              child: Divider(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      GestureDetector(
                        onTap: () {
                          NavHelper.push(context, InvaiteFreend());
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * .05),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.local_hospital_outlined,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: size.width * .03,
                                      ),
                                      Text("معرفی به دوستان"),
                                    ],
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,
                                    size: size.width * .04,
                                    color: Colors.amber),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * .05),
                              child: Divider(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      GestureDetector(
                        onTap: () {
                          exit(0);
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * .05),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.exit_to_app_outlined,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: size.width * .03,
                                      ),
                                      Text("خروج"),
                                    ],
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,
                                    size: size.width * .04,
                                    color: Colors.amber),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * .05),
                              child: Divider(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            height: 60,
            backgroundColor: Colors.black38,
            index: _bottomNavIndex,
            key: _bottomNavigationKey,
            items: <Widget>[
              Icon(Icons.home, size: 30),
              Icon(Icons.call, size: 30),
              Icon(Icons.assessment_outlined, size: 30),
              Icon(Icons.local_library_outlined, size: 30),
            ],
            onTap: (index) {
              setState(() {
                _bottomNavIndex = index;
                pageController.jumpToPage(index);
              });
            },
          ),
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            leading: GestureDetector(
                onTap: () {
                  _key.currentState.openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.amber,
            title: (_bottomNavIndex == 0)
                ? Text("اندومتریوز")
                : (_bottomNavIndex == 1)
                    ? Text("ارتباط با ما")
                    : (_bottomNavIndex == 2)
                        ? Text("ارزشیابی")
                        : Text("درباره ما"),
          ),
          body: Container(
            height: size.height,
            width: size.width,
            // margin: EdgeInsets.symmetric(vertical: size.height * .1 , horizontal: size.width * .05),
            child: PageView(
              controller: pageController,
              onPageChanged: (page) {
                setState(() {
                  _bottomNavIndex = page;
                });
                if(page == 2){
                  AlertHelpers.noDesignAlertDialog(context: context,size: size);
                }
              },
              children: [
                _buildGridViewMenu(),
                ContactUsWidget(),
                RateAppScreen(),
                AboutUsWidget(),
              ],
            ),
          ),
        ),
      ),
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
                  color: Colors.black12,
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
                    child: Image.asset(
                      item.icon,
                      color: Colors.amber,
                    ),
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

  _buildGridViewMenu() {
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
}
