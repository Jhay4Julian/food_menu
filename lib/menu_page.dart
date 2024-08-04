import 'package:flutter/material.dart';
import 'package:food_menu/components/category_button.dart';
import 'package:food_menu/components/food_card.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

const String jsonData = '''
  {
    "breakfast": [
      {
        "name": "Buttermilk Pancakes",
        "price": "15.99",
        "description":
            "Delicious buttermilk pancakes served with butter and syrup. A perfect start to your day.",
        "image": "assets/images/buttermilk_pancake.jpeg",
      },
      {
        "name": "Country Delight",
        "price": "20.99",
        "description":
            "A delightful country breakfast with scrambled eggs, sausage, and biscuits.",
        "image": "assets/images/country_delight.jpeg",
      },
      {
        "name": "Bacon Overflow",
        "price": "8.99",
        "description":
            "Crispy bacon served with eggs and toast. A savory start to your day.",
        "image": "assets/images/bacon_overflow.jpeg",
      },
    ],
    "lunch": [
      {
        "name": "Egg Attack",
        "price": "22.99",
        "description":
            "A protein-packed lunch with a perfectly cooked egg on a juicy beef patty.",
        "image": "assets/images/egg_attack.jpeg",
      },
      {
        "name": "American Classic",
        "price": "12.99",
        "description":
            "The all-American classic burger with cheese, lettuce, and tomato.",
        "image": "assets/images/american_classic.jpeg",
      },
      {
        "name": "Diner Double",
        "price": "13.99",
        "description":
            "Classic diner double with eggs, bacon, and hash browns. A hearty lunch to fuel your afternoon.",
        "image": "assets/images/diner_double.jpeg",
      },
    ],
    "drinks": [
      {
        "name": "Oreo Dream",
        "price": "18.99",
        "description":
            "A dreamy Oreo milkshake that's rich, creamy, and loaded with Oreo cookie bits.",
        "image": "assets/images/oreo_dream.jpeg",
      },
      {
        "name": "Quarantine Buddy",
        "price": "16.99",
        "description":
            "A comforting blend of flavors to keep you company, with hints of vanilla and chocolate.",
        "image": "assets/images/quarantine_buddy.jpeg",
      },
      {
        "name": "Godzilla Milkshake",
        "price": "6.99",
        "description":
            "An enormous milkshake packed with flavors and topped with whipped cream and cherries.",
        "image": "assets/images/godzilla_milkshake.jpeg",
      }
    ]
  }
''';

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    'Our Menu',
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Container(
                      height: 4,
                      width: 90,
                      color: const Color(0xFFF59E0B),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryButton(
                    title: 'All',
                    onTap: () {},
                  ),
                  CategoryButton(
                    title: 'Breakfast',
                    onTap: () {},
                  ),
                  CategoryButton(
                    title: 'Lunch',
                    onTap: () {},
                  ),
                  CategoryButton(
                    title: 'Shakes',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
