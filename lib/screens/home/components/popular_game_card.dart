import 'package:flutter/material.dart';

import '../../../models/game.dart';
import '../../../size_config.dart';
import '../../details/details_screen.dart';

class PopularGameCard extends StatelessWidget {
  final Game game;
  const PopularGameCard({
    super.key,
    required this.game,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(300),
        height: getProportionateScreenHeight(210),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: GameDetailsArguments(game: game),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(fit: StackFit.expand, children: [
              Image.asset(
                game.hero!,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(199, 0, 0, 0)
                    ])),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(
              //       horizontal: getProportionateScreenWidth(15),
              //       vertical: getProportionateScreenHeight(20)),
              //   child: Text.rich(TextSpan(
              //       style: const TextStyle(color: Colors.white),
              //       children: [
              //         TextSpan(
              //             text: '\n \n \n \n $name',
              //             style: TextStyle(
              //                 fontSize: getProportionateScreenWidth(25),
              //                 fontWeight: FontWeight.w900)),
              //       ])),
              // )
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: getProportionateScreenHeight(20),
                      left: getProportionateScreenWidth(18)),
                  child: Text(
                    game.name!,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(25),
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
