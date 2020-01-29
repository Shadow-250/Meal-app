import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwitchListTile(
    String title, 
    String description,
    bool currentValue,
    Function updateValue,
  ){
    return SwitchListTile(
      title: Text(title),
      value: _glutenFree,
      subtitle: Text(
        description,
      ),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filter'),
      ),
      // drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Gluten-free', 
                  'Only include gluten-free meals', 
                  _glutenFree,
                  (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  } 
                ),
                _buildSwitchListTile(
                  'Lactose-free', 
                  'Only include Lactose-free meals', 
                  _lactoseFree,
                  (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  } 
                ),
                _buildSwitchListTile(
                  'Vegetarian', 
                  'Only include Vegetarian meals', 
                  _glutenFree,
                  (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  } 
                ),
                _buildSwitchListTile(
                  'Vegan', 
                  'Only include Vegan meals', 
                  _glutenFree,
                  (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  } 
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}