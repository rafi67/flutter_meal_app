import 'package:flutter/material.dart';
import 'package:meal_app/screens/favorites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      //initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meals'),
          bottom: const TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.category), text: 'Categories',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favourites',
            ),
          ],),
        ),
        body: const TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
