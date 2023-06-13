import 'package:flutter/material.dart';
import 'package:playstation_store/routes.dart';
// import 'package:playstation_store/screens/home/home_screen.dart';
import 'package:playstation_store/constants/theme.dart';
import 'package:playstation_store/screens/splash/splash_screen.dart';

import 'size_config.dart';
// import 'package:playstation_store/src/MyApp.dart';
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent, // transparent status bar
//   ));
//   runApp(MyApp());
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PlayStation Store',
        theme: theme(),
        initialRoute: SplashScreen.routeName,
        routes: routes);
  }
}
