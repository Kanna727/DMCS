import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'homePage.dart';
import 'Authentication/Loginpage.dart';
import 'homePage.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Welcome",
        pathImage: "images/ecash-money.jpg",
        description: "Welcome to Digital Mess Coupon System",
        backgroundColor: Color(0xfff5a623),
      )
    );

    slides.add(
      new Slide(
        title: "Welcome",
        backgroundColor: Color(0xff203152),
      )
    );    
  }

  void onDonePress() {
    // TODO: go to next screen
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context)=>LoginPage()
    ));
  }

  void onSkipPress() {
    // TODO: go to next screen
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context)=>LoginPage()
    ));
  }


  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      onSkipPress: this.onSkipPress,
    );
  }
}