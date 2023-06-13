import 'package:flutter/material.dart';
import 'package:playstation_store/screens/sign_up/sign_up_screen.dart';

import '../constants/constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: const Text(
            " Sign up",
            style: TextStyle(color: kPrimaryLightColor),
          ),
        )
      ],
    );
  }
}
