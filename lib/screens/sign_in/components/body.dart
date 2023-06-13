import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/no_account_text.dart';
import '../../../size_config.dart';
import 'sign_in_from.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              SizedBox(
                  height: getProportionateScreenHeight(100),
                  width: getProportionateScreenWidth(250),
                  child: SvgPicture.asset(
                      "assets/icons/playStationStore_logo.svg")),
              SizedBox(
                height: getProportionateScreenHeight(35),
              ),
              const SignInForm(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              const NoAccountText(),
              SizedBox(height: SizeConfig.screenHeight * 0.2),
            ],
          )),
        ),
      ),
    );
  }
}
