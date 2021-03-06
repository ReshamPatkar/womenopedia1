import 'package:flutter/material.dart';
import 'package:womenopedia1/Screens/medit_home_screen.dart';
import 'package:womenopedia1/Screens/period_tracker_screen.dart';
import 'package:womenopedia1/Screens/workout_screen.dart';
import 'package:womenopedia1/Widgets/button_tile.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'Home Screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 48.0),
            child: ButtonTile(onPress: () {
              Navigator.pushNamed(context, PredictPage.id);
            }, text: 'Period Tracker'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 48.0),
            child: ButtonTile(onPress: () {}, text: 'Live Location'),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 48.0),
            child: ButtonTile(onPress: () {
              Navigator.pushNamed(context, MeditHomeScreen.id);
            }, text: 'Meditation'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 48.0),
            child: ButtonTile(onPress: () {
              Navigator.pushNamed(context, WorkoutScreen.id);
            }, text: 'Workout'),
          ),
        ],
      ),
    );
  }
}
