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
        description: "If there is one thing we can count on\n"
            "In Menstruation and in life\n"
            "It is unpredictable\n"
            "-Nikki Tajiri",
        pathImage: "images/Period tracker.jpg",
        backgroundColor: kPrimaryColor,
      ),
    );
    slides.add(
      new Slide(
        title: "Live Location",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed lectus a magna hendrerit pellentesque sed sed orci. In bibendum elit quis ante dapibus ornare. Mauris velit nibh, elementum et dui sed, congue porttitor magna. Nunc vel iaculis arcu. Morbi varius, felis quis bibendum hendrerit, elit enim sollicitudin libero, eget ornare enim massa nec lacus. Praesent ac orci eget nunc auctor convallis. Quisque quis arcu justo. ",
        pathImage: "images/safety.png",
        backgroundColor: kDarkPrimaryColor,
      ),
    );

    slides.add(
      new Slide(
        title: "Meditation",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed lectus a magna hendrerit pellentesque sed sed orci. In bibendum elit quis ante dapibus ornare. Mauris velit nibh, elementum et dui sed, congue porttitor magna. Nunc vel iaculis arcu. Morbi varius, felis quis bibendum hendrerit, elit enim sollicitudin libero, eget ornare enim massa nec lacus. Praesent ac orci eget nunc auctor convallis. Quisque quis arcu justo. ",
        pathImage: "images/Meditation.jpg",
        backgroundColor: kPrimaryColor,
      ),
    );
    slides.add(
      new Slide(
        title: "Workout",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed lectus a magna hendrerit pellentesque sed sed orci. In bibendum elit quis ante dapibus ornare. Mauris velit nibh, elementum et dui sed, congue porttitor magna. Nunc vel iaculis arcu. Morbi varius, felis quis bibendum hendrerit, elit enim sollicitudin libero, eget ornare enim massa nec lacus. Praesent ac orci eget nunc auctor convallis. Quisque quis arcu justo. ",
        pathImage: "images/workout.jpg",
        backgroundColor: kDarkPrimaryColor,
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
