import 'package:flutter/material.dart';

import '../size_config.dart';

const kPrimaryColor = Color(0xff030926);
const kPrimaryLightColor = Color(0xff0B3ED9);
const kSecondaryLightColor = Color.fromARGB(39, 0, 113, 206);
const kTextColor = Color(0xffffffff);
const kTertiaryColor = 0xff8A8A9D;

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
