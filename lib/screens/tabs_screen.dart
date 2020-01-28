import 'package:flutter/material.dart';

import './favorites-screen.dart';
import './categories_screen.dart';

class TabsSceen extends StatefulWidget {
  @override
  _TabsSceenState createState() => _TabsSceenState();
}

class _TabsSceenState extends State<TabsSceen> {
  final List<Map<String, Object>> _page = [
    {'page' : CategoriesScreen(), 'title' : 'Categories'},
    {'page' : FavotitesScreen(), 'title' : 'Favorites'}
  ];

  int _selectedPageIndex = 0;

  void _selectpage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
        ),
        body: _page[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => _selectpage(index),
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text(_page[_selectedPageIndex]['title']),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.favorite),
              title: Text(_page[_selectedPageIndex]['title']),
            ),
          ],
        ),
      ),
    );
  }
}