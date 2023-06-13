import 'package:flutter/material.dart';
import 'package:playstation_store/screens/splash/components/body.dart';
import 'package:playstation_store/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Scaffold(
      body: Body(),
    );
  }
}
