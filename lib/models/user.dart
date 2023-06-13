import 'package:flutter/material.dart';

class User {
  final ImageProvider image;
  final String name;

  User({
    required this.image,
    required this.name,
  });
  User getUserLogin() {
    // sample data
    return User(image: const AssetImage(''), name: "Mahin");
  }
}
