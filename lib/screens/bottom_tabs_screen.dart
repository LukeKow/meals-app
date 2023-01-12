import 'package:flutter/material.dart';

import './categories_screen.dart';
import '../widgets/main_drawer.dart';
import './favorites_screen.dart';

class Page {
  final String title;
  final Widget page;

  Page(this.title, this.page);
}

class BottomTabsScreen extends StatefulWidget {
  const BottomTabsScreen({super.key});

  @override
  State<BottomTabsScreen> createState() => _BottomTabsScreenState();
}

class _BottomTabsScreenState extends State<BottomTabsScreen> {
  final List<Page> _pages = [
    Page('Categories', const CategoriesScreen()),
    Page('Your Favorite', const FavoritesScreen()),
  ];

  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex].title),
      ),
      drawer: const MainDrawer(),
      body: _pages[_selectedPageIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).textTheme.bodyText1!.color,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorities',
          ),
        ],
      ),
    );
  }
}
