import 'package:flutter/material.dart';
import 'package:playstation_store/screens/filter/filter_screen.dart';

import '../../../constants/constants.dart';
import '../../../size_config.dart';
import 'icon_btn.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenHeight(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: SizeConfig.screenWidth * 0.65, // 65% of our view
            height: 45,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Search Game',
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(kTertiaryColor)),
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                    color: Color(kTertiaryColor),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(12))),
            ),
          ),
          IconBtn(
            svgSrc: 'assets/icons/settings-icons.svg',
            press: () => Navigator.pushNamed(context, FilterScreen.routeName),
          ),
          IconBtn(
            svgSrc: 'assets/icons/user.svg',
            press: () => Navigator.pushNamed(context, FilterScreen.routeName),
          )
        ],
      ),
    );
  }
}
