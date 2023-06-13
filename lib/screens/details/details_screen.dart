import 'package:flutter/material.dart';

import '../../models/game.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  static String routeName = '/details';
  @override
  Widget build(BuildContext context) {
    final GameDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as GameDetailsArguments;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            agrs.game.name!,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: Body(game: agrs.game));
  }
}

class GameDetailsArguments {
  final Game game;

  GameDetailsArguments({required this.game});
}
