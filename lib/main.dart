import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

import './screens/meal_details_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import './screens/bottom_tabs_screen.dart';
// import './screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeData theme = ThemeData(
      primarySwatch: generateMaterialColor(color: const Color(0xFF52B04C)),
      canvasColor: const Color(0xFFF1FFF0),
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Color(0xFFF1FFF0),
            ),
            bodyText2: const TextStyle(
              color: Color(0xFFB39996),
            ),
            headline6: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            ),
          ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          secondary: const Color(0xFF331410),
        ),
      ),
      routes: {
        '/': (ctx) => const BottomTabsScreen(),
        CategoryMealsScreen.route: (ctx) => const CategoryMealsScreen(),
        MealDetailsScreen.route: (ctx) => const MealDetailsScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const CategoriesScreen());
      },
    );
  }
}
