import 'package:flutter/widgets.dart';
import 'package:playstation_store/screens/details/details_screen.dart';
import 'package:playstation_store/screens/filter/filter_screen.dart';
import 'package:playstation_store/screens/forgot_password/forgot_password_screen.dart';
import 'package:playstation_store/screens/home/home_screen.dart';
import 'package:playstation_store/screens/search/search_screen.dart';
import 'package:playstation_store/screens/sign_in/sign_in_screen.dart';
import 'package:playstation_store/screens/sign_up/sign_up_screen.dart';
import 'package:playstation_store/screens/splash/splash_screen.dart';
// import 'package:playstation_store/screens/cart/cart_screen.dart';
// import 'package:playstation_store/screens/complete_profile/complete_profile_screen.dart';
// import 'package:playstation_store/screens/details/details_screen.dart';
// import 'package:playstation_store/screens/forgot_password/forgot_password_screen.dart';

// import 'package:playstation_store/screens/otp/otp_screen.dart';
// import 'package:playstation_store/screens/profile/profile_screen.dart';
// import 'package:playstation_store/screens/sign_in/sign_in_screen.dart';
// import 'package:playstation_store/screens/splash/splash_screen.dart';

// import 'screens/sign_up/sign_up_screen.dart';

// // We use name route
// // All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
//   LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
//   CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
//   OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  FilterScreen.routeName: (context) => const FilterScreen(),
  SearchScreen.routeName: (context) => const SearchScreen(),
//   ProfileScreen.routeName: (context) => ProfileScreen(),
};
