// @dart=2.9
import 'package:flutter/material.dart';

import '../model/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static String id = 'Meal Detail Screen';
  final Meal meal=Meal(
      mealTime: "DIET RECOMMENDATIONS",
      name: "",
      kiloCaloriesBurnt: "271",
      timeTaken: "10",
      imagePath: "images/fruit_granola.jpg",
      ingredients: [
        "Diet for Anti-Cancer ",
        "Diet for HIV_AIDS ",
        "Diet for Diabetes ",
        "Diet for Pregnant Women ",
      ],
      preparation:
      '''An anti-cancer diet is an important strategy you can use to reduce your risk of cancer. 
•	Eat plenty of fruits and vegetables. 
•	Sip green tea throughout your day
•	Eat more tomatoes. 
•	Use olive oil. 
•	Snack on grapes. 
•	Use garlic and onions abundantly. 
•	Eat fish. 

\n Diet recommendations for HIV/AIDS Patients
•	Vitamin A and beta-carotene (skin and lung health): 
•	Meat, fish, chicken, nuts, beans, avocados, broccoli, and green leafy vegetables.
•	Vitamin C, citrus fruits.
•	Iron, grain bread, liver, fish, eggs.
•	Selenium and zinc, beans, milk, and other dairy products.

\n A Diabetes simply means eating healthiest foods in moderate amounts
and sticking to regular mealtimes
.Legumes such as beans and peas
.Whole Grains
.Avocados
.Nuts
.Canola,Olive and peanut oils
.Low-fat dairy products , such as milk and cheese

\n Diet recommendation for pregnant women
•	Dried beans.
•	Dried fruits, such as apricots.
•	Egg yolk, Oysters (pregnant women should eat them cooked), Poultry.
•	Some whole grain cereals, if fortified with iron.
•	Cherries, Apples, Pears, Watermelon, Apricots.  ''');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: true,
            floating: true,
            backgroundColor: const Color(0xFF200087),
            expandedHeight: 300,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
                child: Image.asset(
                  meal.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    meal.mealTime.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                  subtitle: Text(
                    meal.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "${meal.kiloCaloriesBurnt} kcal",
                            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${meal.timeTaken} mins",
                            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 16),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "INGREDIENTS",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      for (int i = 0; i < meal.ingredients.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            meal.ingredients[i],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "PREPARATION",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                  child: Text(
                    meal.preparation,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
