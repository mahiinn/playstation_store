import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:playstation_store/screens/home/home_screen.dart';
import 'package:playstation_store/screens/sign_in/sign_in_screen.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: double.infinity,
          height: constraints.maxHeight,
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  height: getProportionateScreenHeight(100),
                  width: getProportionateScreenWidth(250),
                  child: SvgPicture.asset(
                      "assets/icons/playStationStore_logo.svg"),
                ),
              ),
              const Spacer(flex: 3),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Text(
                        'FIND YOUR NEXT GAME',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(28),
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(8),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(60),
                            vertical: getProportionateScreenHeight(8)),
                        child: Text(
                            'Discover, explore and keep track of the best rated video games of all time.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(30),
                      ),
                      DefaultButton(
                          text: "Get Started",
                          press: () {
                            Navigator.pushNamed(
                                context, SignInScreen.routeName);
                          }),
                      SizedBox(
                        height: getProportionateScreenHeight(15),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.popAndPushNamed(
                            context, HomeScreen.routeName),
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(14)),
                        ),
                      ),
                      const Spacer()
                    ],
                  ))
            ],
          ),
        ),
      );
    }));
  }
}
