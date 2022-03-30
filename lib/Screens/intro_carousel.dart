import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';
import 'package:womenopedia1/palette.dart';

import 'logo_screen.dart';

//import 'package:intro_slider_example/home.dart';

class IntroScreen extends StatefulWidget {
  static String id = 'Intro Screen';
  IntroScreen({Key? key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        title: "Period Tracker",
        description:
            "Menstruation and life, if there is one thing we can bet on, it is that they are both unpredictable!",
        pathImage: "images/Period tracker.jpg",
        heightImage: 300,
        widthImage: 600,
        backgroundColor: Color(0xFFfccfd2),
      ),
    );
    slides.add(
      new Slide(
        title: "Live Location Tracker",
        description:
            "The day a woman can walk freely on the roads at night, that day we can say that India has achieved independence.",
        pathImage: "images/safety.png",
        heightImage: 300,
        widthImage: 600,
        backgroundColor: Color(0xff350436),
      ),
    );

    slides.add(
      new Slide(
        title: "Meditation feature",
        description: "You can't live a positive life with a negative mind!",
        pathImage: "images/Meditation.jpg",
        heightImage: 300,
        widthImage: 700,
        backgroundColor: Color(0xff102b1e),
      ),
    );
    slides.add(
      new Slide(
        title: "Workout feature",
        description:
            "EXERCISING SHOULD BE ABOUT REWARDING THE BODY WITH ENDORPHINS AND STRENGTH...\n"
            "NOT ABOUT PUNISHING YOUR BODY FOR WHAT YOU'VE EATEN.",
        pathImage: "images/workout.jpg",
        heightImage: 300,
        widthImage: 550,
        backgroundColor: Color(0xff420d05),
      ),
    );
  }

  void onDonePress() {
    Navigator.pushNamed(context, LogoScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
