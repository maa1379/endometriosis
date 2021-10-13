import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';

class RateAppScreen extends StatefulWidget {
  @override
  _RateAppScreenState createState() => _RateAppScreenState();
}

class _RateAppScreenState extends State<RateAppScreen> {
  Size size;
  TextEditingController ageController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  TextEditingController reshteController = TextEditingController();
  TextEditingController maghtaController = TextEditingController();
  List<String> attachments = [];
  bool isHTML = false;



  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .02,
            ),
            _buildAgeField(),
            SizedBox(
              height: size.height * .02,
            ),
            _buildJobField(),
            SizedBox(
              height: size.height * .02,
            ),
            _buildReshteField(),
            SizedBox(
              height: size.height * .02,
            ),
            _buildMaghtaField(),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRezomeField(),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "کارکرد کلی نرم افزار کاربردی"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "میزان راحتی کار با نرم افزار"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "طراحی کلی نرم افزار"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "کار مداوم با نرم افزار در صفحه نمایش"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "سازماندهی اطلاعات نرم افزار کاربردی"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "توالی صفحه نمایش"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(
                text:
                    "استفاده از عبارات مشخص جهت تسهیل انجام کار در نرم افزار"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "محل پیغام ها در صفحه نمایش"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "پیام جهت ثبت داده های ضروری"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "پیام های خطا"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "پیام های نرم افزار کاربردی جهت تکمیل وظایف کاربر"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "یادگیری کار با نرم افزار کاربردی"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "پیام های راهنما در صفحه نمایش"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "امکان انجام سریع و آسان وظایف"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "یادگیری اسامی و کاربرد دستورات"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "سرعت بارگذاری صفحات نرم افزار کاربردی"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "طراحی شده برای کاربر در سطوح مختلف"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "تصحیح اشتباهات کاربر هنگام ورود داده"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "تعداد قابلیت های نرم افزار کاربردی"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate1(text: "اعتبار نرم افزار کاربردی"),
            SizedBox(
              height: size.height * .05,
            ),
            _buildSubmitBtn(),
            SizedBox(
              height: size.height * .05,
            ),
          ],
        ),
      ),
    );
  }

  _buildAgeField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .06),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: TextFormField(
          obscureText: false,
          textAlign: TextAlign.center,
          controller: ageController,
          keyboardType: TextInputType.text,
          maxLength: 11,
          decoration: InputDecoration(
            hintText: "سن خود را وارد کنید",
            counterText: "",
            hintStyle: TextStyle(color: Colors.black26, fontSize: 14),
            focusColor: Colors.pinkAccent,
            contentPadding: EdgeInsets.symmetric(
                horizontal: size.width * .03, vertical: size.height * .005),
            fillColor: Colors.white,
            labelText: "سن خود را وارد کنید:",
            labelStyle: TextStyle(fontSize: 14, color: Colors.black),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  _buildJobField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .06),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: TextFormField(
          obscureText: false,
          textAlign: TextAlign.center,
          controller: jobController,
          keyboardType: TextInputType.text,
          maxLength: 11,
          decoration: InputDecoration(
            hintText: "شغل خود را وارد کنید",
            counterText: "",
            hintStyle: TextStyle(color: Colors.black26, fontSize: 14),
            focusColor: Colors.pinkAccent,
            contentPadding: EdgeInsets.symmetric(
                horizontal: size.width * .03, vertical: size.height * .005),
            fillColor: Colors.white,
            labelText: "شغل خود را وارد کنید",
            labelStyle: TextStyle(fontSize: 14, color: Colors.black),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  _buildReshteField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .06),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: TextFormField(
          obscureText: false,
          textAlign: TextAlign.center,
          controller: reshteController,
          keyboardType: TextInputType.text,
          maxLength: 11,
          decoration: InputDecoration(
            hintText: "رشته تحصیلی خود را وارد کنید",
            counterText: "",
            hintStyle: TextStyle(color: Colors.black26, fontSize: 14),
            focusColor: Colors.pinkAccent,
            contentPadding: EdgeInsets.symmetric(
                horizontal: size.width * .03, vertical: size.height * .005),
            fillColor: Colors.white,
            labelText: "رشته تحصیلی خود را وارد کنید",
            labelStyle: TextStyle(fontSize: 14, color: Colors.black),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  _buildMaghtaField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .06),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: TextFormField(
          obscureText: false,
          textAlign: TextAlign.center,
          controller: maghtaController,
          keyboardType: TextInputType.text,
          maxLength: 11,
          decoration: InputDecoration(
            hintText: "مقطع تحصیلی خود را وارد کنید",
            counterText: "",
            hintStyle: TextStyle(color: Colors.black26, fontSize: 14),
            focusColor: Colors.pinkAccent,
            contentPadding: EdgeInsets.symmetric(
                horizontal: size.width * .03, vertical: size.height * .005),
            fillColor: Colors.white,
            labelText: "مقطع تحصیلی خود را وارد کنید",
            labelStyle: TextStyle(fontSize: 14, color: Colors.black),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  _buildRezomeField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .06),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: TextFormField(
          obscureText: false,
          textAlign: TextAlign.center,
          controller: maghtaController,
          keyboardType: TextInputType.text,
          maxLength: 11,
          decoration: InputDecoration(
            hintText: "سابقه کار خود را وارد کنید",
            counterText: "",
            hintStyle: TextStyle(color: Colors.black26, fontSize: 14),
            focusColor: Colors.pinkAccent,
            contentPadding: EdgeInsets.symmetric(
                horizontal: size.width * .03, vertical: size.height * .005),
            fillColor: Colors.white,
            labelText: "سابقه کار خود را وارد کنید",
            labelStyle: TextStyle(fontSize: 14, color: Colors.black),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  _buildRate1({String text}) {
    return Container(
      height: size.height * .15,
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: size.width * .05),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ]),
      child: Column(
        children: [
          SizedBox(
            height: size.height * .01,
          ),
          AutoSizeText(
            text,
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
          SizedBox(
            height: size.height * .03,
          ),
          RatingBar.builder(
            initialRating: 0,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemSize: size.width * .08,
            itemCount: 10,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildSubmitBtn() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * .06),
      child: SizedBox(
        height: size.height * .06,
        width: size.width,
        child: Material(
          color: Colors.transparent,
          elevation: 3,
          child: TextButton(
            onPressed: (){
              print("dfdsf");
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.amber)),
            child: AutoSizeText(
              "پایان ارزشیابی",
              maxFontSize: 24,
              minFontSize: 12,
              maxLines: 1,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
