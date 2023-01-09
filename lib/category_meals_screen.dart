import 'package:flutter/material.dart';

class CategoryMealsScreenArguments {
  CategoryMealsScreenArguments({required this.id, required this.title});
  final String id;
  final String title;
}

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen(
  //   this.categoryId,
  //   this.categoryTitle, {
  //   super.key,
  // });

  static const String route = '/category-meals';

  const CategoryMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments
        as CategoryMealsScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArgs.title),
      ),
      body: const Center(
        child: Text('The Recipes For The Category'),
      ),
    );
  }
}
