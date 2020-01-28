import 'package:flutter/material.dart';
import 'package:meal_app/screens/favorites-screen.dart';

import './categories_screen.dart';

class TabsSceen extends StatefulWidget {
  @override
  _TabsSceenState createState() => _TabsSceenState();
}

class _TabsSceenState extends State<TabsSceen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          CategoriesScreen(),
          FavotitesScreen(),
        ],),
      ),
    );
  }
}