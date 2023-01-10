import 'package:flutter/material.dart';

class MealDetailsScreenArguments {
  final String id;

  MealDetailsScreenArguments({required this.id});
}

class MealDetailsScreen extends StatelessWidget {
  static const String route = '/meal-details';

  const MealDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments
        as MealDetailsScreenArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text(routeArgs.id),
        ),
        body: Center(
          child: Text(routeArgs.id),
        ));
  }
}
