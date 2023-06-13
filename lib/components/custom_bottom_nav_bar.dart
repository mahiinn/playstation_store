import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';
import '../enum.dart';
import '../screens/home/home_screen.dart';
import '../screens/search/search_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/home-icon.svg",
                  // ignore: deprecated_member_use
                  color: MenuState.home == selectedMenu
                      ? kPrimaryLightColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Search.svg",
                  // ignore: deprecated_member_use
                  color: MenuState.search == selectedMenu
                      ? kPrimaryLightColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, SearchScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/shopping.svg",
                  // ignore: deprecated_member_use
                  color: MenuState.card == selectedMenu
                      ? kPrimaryLightColor
                      : inActiveIconColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                  icon: SvgPicture.asset(
                    "assets/icons/user.svg",
                    // ignore: deprecated_member_use
                    color: MenuState.profile == selectedMenu
                        ? kPrimaryLightColor
                        : inActiveIconColor,
                  ),
                  onPressed: () {}
                  // Navigator.pushNamed(context, ProfileScreen.routeName),
                  ),
            ],
          )),
    );
  }
}
