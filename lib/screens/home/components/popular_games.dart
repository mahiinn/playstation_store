import 'package:flutter/material.dart';

import '../../../models/game.dart';
import '../../../size_config.dart';
import 'popular_game_card.dart';
import 'section_title.dart';

class PopularGames extends StatelessWidget {
  const PopularGames({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Games',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                games.length,
                (index) {
                  if (games[index].isPopular) {
                    return PopularGameCard(game: games[index]);
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
