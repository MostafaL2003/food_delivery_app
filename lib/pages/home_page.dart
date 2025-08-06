import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_description.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_food_listtile.dart';
import 'package:food_delivery_app/components/my_location.dart';
import 'package:food_delivery_app/components/my_sliver_appbar.dart';
import 'package:food_delivery_app/components/my_tabbar.dart';
import 'package:food_delivery_app/model/food.dart';
import 'package:food_delivery_app/model/restaurant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //sort foods into their category
  List<Food> _filterMenuCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }
  //return list of foods for certain category

  List<Widget> getFoodInCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuCategory(category, fullMenu);
      return Container(
        color: Theme.of(context).colorScheme.surface,
        child: ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            return MyFoodListtile(food: food, onTap: () {});
          },
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppbar(
                title: MyTabbar(tabController: _tabController),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      endIndent: 30,
                      indent: 20,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    //LOCATION
                    MyLocation(),
                    Divider(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    //DESCRIPTION
                    MyDescription(),
                    SizedBox(height: 20),
                    Divider(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ],
                ),
              ),
            ],
        body: Consumer<Restaurant>(
          builder:
              (context, restaurant, child) => TabBarView(
                controller: _tabController,
                children: getFoodInCategory(restaurant.menu),
              ),
        ),
      ),
    );
  }
}
