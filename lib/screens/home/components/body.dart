import 'package:flutter/material.dart';
import 'package:playstation_store/screens/home/components/categories.dart';
import 'package:playstation_store/screens/home/components/home_header.dart';

import 'package:playstation_store/size_config.dart';

import 'games_on_discount.dart';
import 'popular_games.dart';
import 'section_title_2.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        const HomeHeader(),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        const PopularGames(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        const SecctionTitle2(
          text: 'Categories',
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Categories(),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        const GamesOnDiscount(),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
      ]),
    ));
  }
}
