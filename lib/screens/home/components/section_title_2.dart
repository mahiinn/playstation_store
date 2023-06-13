import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SecctionTitle2 extends StatelessWidget {
  const SecctionTitle2({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Categories',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: getProportionateScreenWidth(18)),
          ),
        ],
      ),
    );
  }
}
