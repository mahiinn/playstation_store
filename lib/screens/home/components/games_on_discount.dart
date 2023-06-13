import 'package:flutter/material.dart';
import 'package:playstation_store/screens/home/components/section_title.dart';

import '../../../models/game.dart';
import '../../../size_config.dart';
import 'games_on_discount_card.dart';

class GamesOnDiscount extends StatelessWidget {
  const GamesOnDiscount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Games on discount", press: () {}),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                games.length,
                (index) {
                  if (games[index].isPopular) {
                    return GameOnDiscountCard(product: games[index]);
                  }

                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
