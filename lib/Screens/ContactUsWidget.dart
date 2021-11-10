import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';


class ContactUsWidget extends StatelessWidget {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .05),
          child: AutoSizeText(
            "کاربر گرامی شما میتوانید جهت ارتقا برنامه، نظرات و پیشنهادات خود را با تیم پژوهشی با آدرس زیر در میان بگذارید. پیشاپیش از شما کمال تشکر را دارم",
            maxFontSize: 28,
            minFontSize: 16,
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              inherit: false,
              color: Colors.amber,
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(height: size.height *.1,),
        AutoSizeText(
          "hodaz138@gmail.com",
          maxFontSize: 28,
          minFontSize: 16,
          maxLines: 3,
          textAlign: TextAlign.center,
          style: TextStyle(
            inherit: false,
            color: Colors.amber,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}



class AboutUsWidget extends StatelessWidget {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .05),
          child: Center(
            child: Text("کابر گرامی: این نرم افزار آموزشی مربوط به پایان نامه ارشد با عنوان ایجاد برنامه کاربردی آموزشی مبتنی بر تلفن همراه هوشمند برای زنان در معرض خطر اندومتریوز تحت نظر دانشگاه علوم پزشکی ایران طراحی و ارائه شده است. امید است بکارگیری این برنامه، برای شما سودمند باشد.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18,color: Colors.amber),
            ),
          ),
        ),
      ],
    );
  }
}
