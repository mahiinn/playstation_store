import 'package:flutter/material.dart';
import 'package:playstation_store/models/category.dart';
import 'package:playstation_store/screens/home/components/categories_cart.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  // Demo categories
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    List<String> icon = _categories.map((category) => category.icon).toList();
    List<String> nameOfCategory =
        _categories.map((category) => category.name).toList();
    return Row(children: <Widget>[
      Expanded(
        child: SizedBox(
          height: 100.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                child: CategoryCard(
                  icon: icon[index],
                  nameOfCategory: nameOfCategory[index],
                  press: () {},
                ),
              );
            },
          ),
        ),
      ),
    ]);
  }
}
