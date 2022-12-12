import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawer_widget.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = 'filterScreen';
  final Function saveFilters;
  final Map<String, bool> currentFilter;
  FilterScreen(this.saveFilters, this.currentFilter);
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;
  @override
  initState() {
    _glutenFree = widget.currentFilter['gluten'] as bool;
    _lactoseFree = widget.currentFilter['lactose'] as bool;
    _vegan = widget.currentFilter['vegan'] as bool;
    _vegetarian = widget.currentFilter['vegetarian'] as bool;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Filters'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  final selectedFilters = {
                    'gluten': _glutenFree,
                    'lactose': _lactoseFree,
                    'vegan': _vegan,
                    'vegetarian': _vegetarian
                  };
                  widget.saveFilters(selectedFilters);
                },
                icon: const Icon(Icons.save))
          ],
        ),
        drawer: MainDrwer(),
        body: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: const Center(
                child: Text(
              'Adjust Your meal selection',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ),
          SwitchListTile(
            title: const Text('Gluten-free'),
            value: _glutenFree,
            onChanged: (newValue) {
              setState(() {
                _glutenFree = newValue;
              });
            },
            subtitle: const Text('Only include gluten-free-meals'),
          ),
          SwitchListTile(
            title: const Text('Lactose-free'),
            value: _lactoseFree,
            onChanged: (newValue) {
              setState(() {
                _lactoseFree = newValue;
              });
            },
            subtitle: const Text('Only include lactose meals'),
          ),
          SwitchListTile(
            title: const Text('Vegetarian'),
            value: _vegetarian,
            onChanged: (newValue) {
              setState(() {
                _vegetarian = newValue;
              });
            },
            subtitle: const Text('Only include vegetarin-meals'),
          ),
          SwitchListTile(
            title: const Text('Vegan'),
            value: _vegan,
            onChanged: (newValue) {
              setState(() {
                _vegan = newValue;
              });
            },
            subtitle: const Text('Only include vegan meals'),
          ),
        ]));
  }
}
