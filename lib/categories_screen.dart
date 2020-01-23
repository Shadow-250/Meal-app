import 'package:flutter/material.dart';
import 'package:meal_app/categories_item.dart';

import './dummy_data.dart';
import './models/category.dart';


class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      children: DUMMY_CATEGORIES.map((catData) => CategoryItem(catData.title, catData.color)).toList(),
      ),
    );
  }
}