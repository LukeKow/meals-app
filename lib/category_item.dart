import 'package:flutter/material.dart';
import 'package:meals_app/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(
    this.title,
    this.id,
    this.color, {
    super.key,
  });

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoryMealsScreen(id, title);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.0),
              color.withOpacity(0.5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
