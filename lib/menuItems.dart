import 'package:flutter/material.dart';
import 'package:fluttermarket/category.dart';

class MenyuItems extends StatefulWidget {
  @override
  _MenyuItemsState createState() => _MenyuItemsState();
}

class _MenyuItemsState extends State<MenyuItems>
    with SingleTickerProviderStateMixin {
  TabController tabBarController;
  @override
  void initState() {
    super.initState();
    tabBarController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabBarController,
          indicatorColor: Colors.red[400],
          labelColor: Colors.red[400],
          unselectedLabelColor: Colors.grey,
          isScrollable: true,
          labelStyle: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
          ),
          tabs: [
            Tab(
              child: Text(
                "Main eat",
              ),
            ),
            Tab(
              child: Text(
                "Candy",
              ),
            ),
            Tab(
              child: Text(
                "Drink",
              ),
            ),
            Tab(
              child: Text(
                "Cleaning",
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabBarController,
            children: [
              Category(
                category: "Main eat",
              ),
              Category(
                category: "Candy",
              ),
              Category(
                category: "Drink",
              ),
              Category(
                category: "Cleaning",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
