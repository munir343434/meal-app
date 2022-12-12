import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/screens/Filter_Screen.dart';
import 'package:meals_app/screens/category_meals.dart';
import 'package:meals_app/screens/meals_details.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import 'widgets/meals.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  void _toggleFavourite(String mealId) {
    final existingIndex =
        _favouriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      // Future.delayed(Duration.zero, () {
      //   setState(() {
      _favouriteMeals.removeAt(existingIndex);
      //   });
      // });
    } else {
      // Future.delayed(Duration.zero, () {
      //   setState(() {
      _favouriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id == mealId));
      //   });
      // });
    }
  }

  bool _isMealFavourite(String id) {
    return _favouriteMeals.any((meal) => meal.id == id);
  }

  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favouriteMeals = [];
  void _setFilters(Map<String, bool> filterDta) {
    setState(() {
      _filters = filterDta;
      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters['gluten']! && !meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose']! && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegan']! && !meal.isVegan) {
          return false;
        }
        if (_filters['vegetarian']! && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(primarySwatch: Colors.pink, accentColor: Colors.amber),
      // home: const CategoriesScreen(),

      initialRoute: '/',
      routes: {
        '/': (context) => TabsScren(_favouriteMeals),
        CategoriesMealsScreen.routeName: (context) =>
            CategoriesMealsScreen(_availableMeals),
        MealDetalScreen.routeName: (context) =>
            MealDetalScreen(_toggleFavourite, _isMealFavourite),
        FilterScreen.routeName: (context) => FilterScreen(_setFilters, _filters)
      },
    );
  }
}
