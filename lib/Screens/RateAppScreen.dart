import 'package:auto_size_text/auto_size_text.dart';
import 'package:dio/dio.dart';
import 'package:endometriosis/helpers/AlertHelper.dart';
import 'package:endometriosis/helpers/ViewHelpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lottie/lottie.dart';

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
  TextEditingController sabegheController = TextEditingController();
  double value1;
  double value2;
  double value3;
  double value4;
  double value5;
  double value6;
  double value7;
  double value8;
  double value9;
  double value10;
  double value11;
  double value12;
  double value13;
  double value14;
  double value15;
  double value16;
  double value17;
  double value18;
  double value19;
  double value20;
  String text = '';


  void main() async {
    Response response;
    var dio = Dio();
    print('start');
    response = await dio.post(
        'Https://endoapp.ir/Mail.php?to=endometrios.app@gmail.com&subject=نتیجه ارزشیابی&text=${text.toString()}&from=admin@endoapp.ir');
    EasyLoading.dismiss();
    if (response.statusCode == 200) {
      print(response.data);
      print('ok');
      ViewHelper.showSuccessDialog(context, "ارزشیابی شما با وفقیت ثبت شد.");
    } else {
      print('no ok');
    }
  }

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
            _buildRate1(
              text: "کارکرد کلی نرم افزار کاربردی",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate2(
              text: "میزان راحتی کار با نرم افزار",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate3(
              text: "طراحی کلی نرم افزار",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate4(
              text: "کار مداوم با نرم افزار در صفحه نمایش",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate5(
              text: "سازماندهی اطلاعات نرم افزار کاربردی",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate6(
              text: "توالی صفحه نمایش",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate7(
              text: "استفاده از عبارات مشخص جهت تسهیل انجام کار در نرم افزار",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate8(
              text: "محل پیغام ها در صفحه نمایش",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate9(
              text: "پیام جهت ثبت داده های ضروری",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate10(
              text: "پیام های خطا",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate11(
              text: "پیام های نرم افزار کاربردی جهت تکمیل وظایف کاربر",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate12(text: "یادگیری کار با نرم افزار کاربردی"),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate13(
              text: "پیام های راهنما در صفحه نمایش",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate14(
              text: "امکان انجام سریع و آسان وظایف",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate15(
              text: "یادگیری اسامی و کاربرد دستورات",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate16(
              text: "سرعت بارگذاری صفحات نرم افزار کاربردی",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate17(
              text: "طراحی شده برای کاربر در سطوح مختلف",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate18(
              text: "تصحیح اشتباهات کاربر هنگام ورود داده",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate19(
              text: "تعداد قابلیت های نرم افزار کاربردی",
            ),
            SizedBox(
              height: size.height * .02,
            ),
            _buildRate20(
              text: "اعتبار نرم افزار کاربردی",
            ),
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
          controller: sabegheController,
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
              setState(() {
                value1 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate2({String text}) {
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
              setState(() {
                value2 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate3({String text}) {
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
              setState(() {
                value3 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate4({String text}) {
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
              setState(() {
                value4 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate5({String text}) {
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
              setState(() {
                value5 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate6({String text}) {
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
              setState(() {
                value6 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate7({String text}) {
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
              setState(() {
                value7 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate8({String text}) {
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
              setState(() {
                value8 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate9({String text}) {
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
              setState(() {
                value9 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate10({String text}) {
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
              setState(() {
                value10 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate11({String text}) {
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
              setState(() {
                value11 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate12({String text}) {
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
              setState(() {
                value12 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate13({String text}) {
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
              setState(() {
                value13 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate14({String text}) {
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
              setState(() {
                value14 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate15({String text}) {
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
              setState(() {
                value15 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate16({String text}) {
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
              setState(() {
                value16 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate17({String text}) {
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
              setState(() {
                value17 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate18({String text}) {
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
              setState(() {
                value18 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate19({String text}) {
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
              setState(() {
                value19 = rating;
              });
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildRate20({String text}) {
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
              setState(() {
                value20 = rating;
              });
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
            onPressed: () {
              text =
                  '${ageController.text} \n${jobController.text}\n${reshteController.text}\n${maghtaController.text}\n${sabegheController.text}\n${reshteController.text}\n${value1.toString()}\n${value2.toString()}\n${value3.toString()}\n${value4.toString()}\n${value5.toString()}\n${value6.toString()}\n${value7.toString()}\n${value8.toString()}\n${value9.toString()}\n${value10.toString()}\n${value11.toString()}\n${value12.toString()}\n${value13.toString()}\n${value14.toString()}\n${value15.toString()}\n${value16.toString()}\n${value17.toString()}\n${value18.toString()}\n${value19.toString()}\n${value20.toString()}';
              EasyLoading.show(
                dismissOnTap: false,
                indicator: Lottie.asset("assets/anim/loading.json"),
              );
              main();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)),
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
