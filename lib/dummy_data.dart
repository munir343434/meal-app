import 'package:meals_app/widgets/category.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meals.dart';

const DUMMY_CATEGORIES = [
  Category(id: 'c1', title: 'Italian', color: Colors.purple),
  Category(id: 'c2', title: 'Quick & Easy', color: Colors.red),
  Category(id: 'c3', title: 'Hamburgers', color: Colors.orange),
  Category(id: 'c4', title: 'German', color: Colors.amber),
  Category(id: 'c5', title: 'Light & Lovely', color: Colors.blue),
  Category(id: 'c6', title: 'Exotic', color: Colors.green),
  Category(id: 'c7', title: 'Breakfast', color: Colors.lightBlue),
  Category(id: 'c8', title: 'Asian', color: Colors.lightGreen),
  Category(id: 'c9', title: 'French', color: Colors.pink),
  Category(id: 'c10', title: 'Summer', color: Colors.teal),
];

const DUMMY_MEALS = [
  Meal(
      id: 'm1',
      categories: ['c1', 'c2'],
      title: 'spaghetti with TomatoSauce',
      imageUrl:
          'https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?cs=srgb&dl=pexels-engin-akyurt-1437267.jpg&fm=jpg&_gl=1*6feseo*_ga*MTkyOTY5MzcxNi4xNjYxODg3OTU3*_ga_8JE65Q40S6*MTY2ODUyNzUwMi4yNy4xLjE2Njg1Mjc1NDMuMC4wLjA.',
      ingredients: [
        '4 Tomatoes',
        '1 tablespoon of olive oil',
        '1 onion',
        '250g spaghetti',
        'spices',
        'cheese(optional'
      ],
      steps: [
        'cut the tomatoes and the onion into small pieces',
        'boil the some water',
        'put the spaghetti into boiling water,'
            'after 2 minitues add the tomato oieces, salt, and pepper',
      ],
      duration: 20,
      complexity: Complexity.simple,
      affordability: Affordability.affordable,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegan: true,
      isVegetarian: false),
  Meal(
      id: 'm2',
      categories: ['c2'],
      title: 'spaghetti with TomatoSauce',
      imageUrl:
          'https://images.pexels.com/photos/35661/pasta-cheese-egg-food.jpg?cs=srgb&dl=pexels-pixabay-35661.jpg&fm=jpg&_gl=1*6kpugv*_ga*MTkyOTY5MzcxNi4xNjYxODg3OTU3*_ga_8JE65Q40S6*MTY2ODUyNzUwMi4yNy4xLjE2Njg1Mjc2MTMuMC4wLjA.',
      ingredients: [
        '4 Tomatoes',
        '1 tablespoon of olive oil',
        '1 onion',
        '250g spaghetti',
        'spices',
        'cheese(optional'
      ],
      steps: [
        'cut the tomatoes and the onion into small pieces',
        'boil the some water',
        'put the spaghetti into boiling water,'
            'after 2 minitues add the tomato oieces, salt, and pepper',
      ],
      duration: 10,
      complexity: Complexity.simple,
      affordability: Affordability.affordable,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegan: false,
      isVegetarian: false),
  Meal(
      id: 'm3',
      categories: ['c3'],
      title: 'spaghetti with TomatoSauce',
      imageUrl:
          'https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?cs=srgb&dl=pexels-rajesh-tp-1633578.jpg&fm=jpg&_gl=1*4t2x72*_ga*MTkyOTY5MzcxNi4xNjYxODg3OTU3*_ga_8JE65Q40S6*MTY2ODUyNzUwMi4yNy4xLjE2Njg1Mjc2NzkuMC4wLjA.',
      ingredients: [
        '4 Tomatoes',
        '1 tablespoon of olive oil',
        '1 onion',
        '250g spaghetti',
        'spices',
        'cheese(optional'
      ],
      steps: [
        'cut the tomatoes and the onion into small pieces',
        'boil the some water',
        'put the spaghetti into boiling water,'
            'after 2 minitues add the tomato oieces, salt, and pepper',
      ],
      duration: 20,
      complexity: Complexity.simple,
      affordability: Affordability.pricely,
      isGlutenFree: false,
      isLactoseFree: true,
      isVegan: false,
      isVegetarian: false),
  Meal(
      id: 'm4',
      categories: [
        'c4',
      ],
      title: 'spaghetti with TomatoSauce',
      imageUrl:
          'https://images.pexels.com/photos/4551906/pexels-photo-4551906.jpeg?cs=srgb&dl=pexels-cottonbro-studio-4551906.jpg&fm=jpg&_gl=1*18l34k0*_ga*MTkyOTY5MzcxNi4xNjYxODg3OTU3*_ga_8JE65Q40S6*MTY2ODUyNzUwMi4yNy4xLjE2Njg1Mjc3MzQuMC4wLjA.',
      ingredients: [
        '4 Tomatoes',
        '1 tablespoon of olive oil',
        '1 onion',
        '250g spaghetti',
        'spices',
        'cheese(optional'
      ],
      steps: [
        'cut the tomatoes and the onion into small pieces',
        'boil the some water',
        'put the spaghetti into boiling water,'
            'after 2 minitues add the tomato oieces, salt, and pepper',
      ],
      duration: 60,
      complexity: Complexity.challanging,
      affordability: Affordability.luxurious,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegan: false,
      isVegetarian: false),
  Meal(
      id: 'm5',
      categories: ['c2', 'c5', 'c10'],
      title: 'spaghetti with TomatoSauce',
      imageUrl:
          'https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg?cs=srgb&dl=pexels-dana-tentis-262959.jpg&fm=jpg&_gl=1*1h1ck1u*_ga*MTkyOTY5MzcxNi4xNjYxODg3OTU3*_ga_8JE65Q40S6*MTY2ODUwODc0OS4yNS4xLjE2Njg1MDg3NjQuMC4wLjA.',
      ingredients: [
        '4 Tomatoes',
        '1 tablespoon of olive oil',
        '1 onion',
        '250g spaghetti',
        'spices',
        'cheese(optional'
      ],
      steps: [
        'cut the tomatoes and the onion into small pieces',
        'boil the some water',
        'put the spaghetti into boiling water,'
            'after 2 minitues add the tomato oieces, salt, and pepper',
      ],
      duration: 15,
      complexity: Complexity.simple,
      affordability: Affordability.luxurious,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: false,
      isVegetarian: true),
  Meal(
      id: 'm6',
      categories: ['c6', 'c10'],
      title: 'spaghetti with TomatoSauce',
      imageUrl:
          'https://images.pexels.com/photos/2113556/pexels-photo-2113556.jpeg?cs=srgb&dl=pexels-rama-khandkar-2113556.jpg&fm=jpg&_gl=1*uvekz1*_ga*MTkyOTY5MzcxNi4xNjYxODg3OTU3*_ga_8JE65Q40S6*MTY2ODUyNzUwMi4yNy4xLjE2Njg1Mjg0NzUuMC4wLjA.',
      ingredients: [
        '4 Tomatoes',
        '1 tablespoon of olive oil',
        '1 onion',
        '250g spaghetti',
        'spices',
        'cheese(optional'
      ],
      steps: [
        'cut the tomatoes and the onion into small pieces',
        'boil the some water',
        'put the spaghetti into boiling water,'
            'after 2 minitues add the tomato oieces, salt, and pepper',
      ],
      duration: 240,
      complexity: Complexity.hard,
      affordability: Affordability.affordable,
      isGlutenFree: true,
      isLactoseFree: false,
      isVegan: false,
      isVegetarian: true),
  Meal(
      id: 'm7',
      categories: [
        'c7',
      ],
      title: 'spaghetti with TomatoSauce',
      imageUrl:
          'https://images.pexels.com/photos/2103949/pexels-photo-2103949.jpeg?cs=srgb&dl=pexels-alexander-mils-2103949.jpg&fm=jpg&_gl=1*12fcw5r*_ga*MTkyOTY5MzcxNi4xNjYxODg3OTU3*_ga_8JE65Q40S6*MTY2ODUyNzUwMi4yNy4xLjE2Njg1MjgzMTQuMC4wLjA.',
      ingredients: [
        '4 Tomatoes',
        '1 tablespoon of olive oil',
        '1 onion',
        '250g spaghetti',
        'spices',
        'cheese(optional'
      ],
      steps: [
        'cut the tomatoes and the onion into small pieces',
        'boil the some water',
        'put the spaghetti into boiling water,'
            'after 2 minitues add the tomato oieces, salt, and pepper',
      ],
      duration: 20,
      complexity: Complexity.simple,
      affordability: Affordability.affordable,
      isGlutenFree: true,
      isLactoseFree: false,
      isVegan: false,
      isVegetarian: true),
  Meal(
      id: 'm8',
      categories: ['c8'],
      title: 'spaghetti with TomatoSauce',
      imageUrl:
          'https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg?cs=srgb&dl=pexels-dana-tentis-262959.jpg&fm=jpg&_gl=1*1h1ck1u*_ga*MTkyOTY5MzcxNi4xNjYxODg3OTU3*_ga_8JE65Q40S6*MTY2ODUwODc0OS4yNS4xLjE2Njg1MDg3NjQuMC4wLjA.',
      ingredients: [
        '4 Tomatoes',
        '1 tablespoon of olive oil',
        '1 onion',
        '250g spaghetti',
        'spices',
        'cheese(optional'
      ],
      steps: [
        'cut the tomatoes and the onion into small pieces',
        'boil the some water',
        'put the spaghetti into boiling water,'
            'after 2 minitues add the tomato oieces, salt, and pepper',
      ],
      duration: 35,
      complexity: Complexity.challanging,
      affordability: Affordability.pricely,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: false,
      isVegetarian: false),
  Meal(
      id: 'm9',
      categories: ['c9'],
      title: 'spaghetti with TomatoSauce',
      imageUrl:
          'https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg?cs=srgb&dl=pexels-dana-tentis-262959.jpg&fm=jpg&_gl=1*1h1ck1u*_ga*MTkyOTY5MzcxNi4xNjYxODg3OTU3*_ga_8JE65Q40S6*MTY2ODUwODc0OS4yNS4xLjE2Njg1MDg3NjQuMC4wLjA.',
      ingredients: [
        '4 Tomatoes',
        '1 tablespoon of olive oil',
        '1 onion',
        '250g spaghetti',
        'spices',
        'cheese(optional'
      ],
      steps: [
        'cut the tomatoes and the onion into small pieces',
        'boil the some water',
        'put the spaghetti into boiling water,'
            'after 2 minitues add the tomato oieces, salt, and pepper',
      ],
      duration: 45,
      complexity: Complexity.hard,
      affordability: Affordability.affordable,
      isGlutenFree: true,
      isLactoseFree: false,
      isVegan: false,
      isVegetarian: true),
  Meal(
      id: 'm10',
      categories: ['c2', 'c5', 'c10'],
      title: 'spaghetti with TomatoSauce',
      imageUrl:
          'https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg?cs=srgb&dl=pexels-dana-tentis-262959.jpg&fm=jpg&_gl=1*1h1ck1u*_ga*MTkyOTY5MzcxNi4xNjYxODg3OTU3*_ga_8JE65Q40S6*MTY2ODUwODc0OS4yNS4xLjE2Njg1MDg3NjQuMC4wLjA.',
      ingredients: [
        '4 Tomatoes',
        '1 tablespoon of olive oil',
        '1 onion',
        '250g spaghetti',
        'spices',
        'cheese(optional)'
      ],
      steps: [
        'cut the tomatoes and the onion into small pieces',
        'boil the some water',
        'put the spaghetti into boiling water,'
            'after 2 minitues add the tomato oieces, salt, and pepper',
      ],
      duration: 30,
      complexity: Complexity.simple,
      affordability: Affordability.affordable,
      isGlutenFree: true,
      isLactoseFree: true,
      isVegan: true,
      isVegetarian: true),
];
