import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:playstation_store/constants/constants.dart';
import 'package:playstation_store/size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.nameOfCategory,
    required this.press,
  });

  final String icon, nameOfCategory;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: SvgPicture.asset(
                    icon,
                    color: Colors.white,
                  )),
            ),
            const SizedBox(height: 5),
            Text(
              nameOfCategory,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
