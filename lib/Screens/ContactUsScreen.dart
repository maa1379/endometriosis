import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'ContactUsWidget.dart';

class ContactUsScreen extends StatelessWidget {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                margin: EdgeInsets.only(top: size.height * .05),
                height: size.height * .1,
                width: size.width * .1,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomRight: Radius.circular(100))
                ),
                child: Icon(Icons.arrow_back_ios_outlined),
              ),
            ),
          ),
          SizedBox(height: size.height *.1,),
          ContactUsWidget(),
        ],
      ),
    );
  }
}



class AboutUsScreen extends StatelessWidget {

  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                margin: EdgeInsets.only(top: size.height * .05),
                height: size.height * .1,
                width: size.width * .1,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomRight: Radius.circular(100))
                ),
                child: Icon(Icons.arrow_back_ios_outlined),
              ),
            ),
          ),
          SizedBox(height: size.height *.1,),
          AboutUsWidget(),
        ],
      ),
    );
  }
}
