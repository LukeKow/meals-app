import 'package:flutter/material.dart';
import './dummy_data.dart';

class CategoryMealsScreenArguments {
  CategoryMealsScreenArguments({required this.id, required this.title});
  final String id;
  final String title;
}

class CategoryMealsScreen extends StatelessWidget {
  static const String route = '/category-meals';

  const CategoryMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments
        as CategoryMealsScreenArguments;
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(routeArgs.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs.title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
