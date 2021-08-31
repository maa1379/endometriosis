import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:endometriosis/Models/MainModel.dart';
import 'package:endometriosis/helpers/MainCategoriesDataBase.dart';
import 'package:endometriosis/helpers/NavHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'SingleScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size size;
  int _bottomNavIndex = 0;
  
  List<MainModel> mainList = [
    MainModel(
      id: 1,
      icon: "assets/images/reproductive.png",
      text: "بیماری اندومتریوز چیست؟",
    ),
    MainModel(
      id: 2,
      icon: "assets/images/reproductive.png",
      text: "علاِئم آن را از کجا بفهیم؟",
    ),
    MainModel(
      id: 1,
      icon: "assets/images/reproductive.png",
      text: "علت درد در اندومتریوز پیست؟",
    ),
    MainModel(
      id: 1,
      icon: "assets/images/pregnant.png",
      text: "آیا اندومتریوز میتواند علت نازایی باشد؟",
    ),
    MainModel(
      id: 1,
      icon: "assets/images/reproductive.png",
      text: "برسی های تشخیصی",
    ),
    MainModel(
      id: 1,
      icon: "assets/images/reproductive.png",
      text: "روش های درمان تسکینی(خانگی)",
    ),
    MainModel(
      id: 1,
      icon: "assets/images/reproductive.png",
      text: "معرفی مراکز درمانی",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Center(
            child: Icon(Icons.home,color: Colors.white,),
          ),
          //params
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: Colors.white24,
          inactiveColor: Colors.white,
          activeColor: Colors.amber,
          icons: [
            Icons.call,
            Icons.local_library_outlined,
            Icons.assessment_outlined,
            Icons.home,
          ],
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          // leftCornerRadius: 32,
          // rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.black,
          title: Text("اندومتریوز"),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          // margin: EdgeInsets.symmetric(vertical: size.height * .1 , horizontal: size.width * .05),
          child: AnimationLimiter(
            child: GridView.builder(
                itemCount: mainList.length,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  // mainAxisSpacing: 0.1
                ),
                itemBuilder: _buildSunListItem),
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
              NavHelper.push(
                context,
                SingleScreen(),
              );
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
                      padding: EdgeInsets.symmetric(horizontal: size.width * .02),
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
