import 'package:flutter/material.dart';
import 'package:playstation_store/screens/details/components/game_image.dart';

import '../../../models/game.dart';

class Body extends StatelessWidget {
  final Game game;
  const Body({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [GameImages(game: game)],
    );
  }
}
