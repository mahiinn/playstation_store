import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playstation_store/screens/home/components/home_header.dart';
import 'package:playstation_store/size_config.dart';

import '../../components/custom_bottom_nav_bar.dart';
import '../../enum.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  static String routeName = '/search';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.search),
      backgroundColor: const Color.fromRGBO(3, 9, 38, 1),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            children: [
              Center(
                child: Column(children: [
                  const HomeHeader(),
                  Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: getProportionateScreenHeight(10)),
                    child: Text("All games",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(20),
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Card(),
                                  ),
                                ),
                              },
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/covers/Game1.png'),
                              ),
                            ),
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Card(),
                                  ),
                                ),
                              },
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/covers/Game2.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Card(),
                                  ),
                                ),
                              },
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/covers/Game3.png'),
                              ),
                            ),
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Card(),
                                  ),
                                ),
                              },
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/covers/Game4.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Card(),
                                  ),
                                ),
                              },
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/covers/Game5.png'),
                              ),
                            ),
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Card(),
                                  ),
                                ),
                              },
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/covers/Game6.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Card(),
                                  ),
                                ),
                              },
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/covers/Game7.png'),
                              ),
                            ),
                            InkWell(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Card(),
                                  ),
                                ),
                              },
                              child: const Image(
                                image: AssetImage(
                                    'assets/images/covers/Game8.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ]),
      ),
    );
  }
}
