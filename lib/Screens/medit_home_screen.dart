import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:womenopedia1/Screens/DietRec.dart';
import 'package:womenopedia1/Screens/welcome_screen.dart';
import 'package:womenopedia1/Screens/workout_screen.dart';

import '../Widgets/category_card.dart';
import 'meditation_screen.dart';

class MeditHomeScreen extends StatefulWidget {
  static String id = 'Medit Home Screen';
  @override
  State<MeditHomeScreen> createState() => _MeditHomeScreenState();
}

class _MeditHomeScreenState extends State<MeditHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Mornign \nShishir",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Diet Recommendation",
                          svgSrc: "images/Hamburger.svg",
                          press: () {
                            Navigator.pushNamed(context, MealDetailScreen.id);
                          },
                        ),
                        // CategoryCard(
                        //   title: "Kegel Exercises",
                        //   svgSrc: "assets/icons/Excrecises.svg",
                        //   press: () {},
                        // ),
                        CategoryCard(
                          title: "Meditation",
                          svgSrc: "images/Meditation.svg",
                          press: () {
                            Navigator.pushNamed(context, MeditationScreen.id);
                          },
                        ),
                        CategoryCard(
                          title: "Workout",
                          svgSrc: "images/yoga.svg",
                          press: () {
                            Navigator.pushNamed(context, WorkoutScreen.id);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}