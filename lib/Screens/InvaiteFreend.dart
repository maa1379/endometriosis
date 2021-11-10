import 'package:auto_size_text/auto_size_text.dart';
import 'package:endometriosis/helpers/ColorHelpers.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class InvaiteFreend extends StatefulWidget {
  @override
  _InvaiteFreendState createState() => _InvaiteFreendState();
}

class _InvaiteFreendState extends State<InvaiteFreend> {
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
          InvaiteWidget(),
        ],
      ),
    );
  }
}



class InvaiteWidget extends StatelessWidget {
  Size size;
  String code = "https://endoapp.ir/endometriosapp.apk";
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .05),
          child: AutoSizeText(
            "شما میتونید با کلیک روی دکمه زیر برنامه ما را به دوستان و نزدیکان خود ارسال کنید",
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
        GestureDetector(
          onTap: (){
            share(context);
          },
          child: Container(
            height: size.height * .05,
            width: size.width * .5,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 5
                )
              ]
            ),
            child: Center(
              child: AutoSizeText(
                "اشتراک گذاری",
                maxFontSize: 28,
                minFontSize: 16,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  inherit: false,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void share(BuildContext context) {
    String text = "ارسال لینک فایل نصبی:$code";
    final RenderBox box = context.findRenderObject();
    Share.share(text,
        subject: "دعوت از دوستان",
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

}


