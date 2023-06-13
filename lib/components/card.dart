import 'package:flutter/material.dart';

import 'package:playstation_store/size_config.dart';

import '../../../models/game.dart';
import '../screens/details/details_screen.dart';

class GameOnDiscountCard extends StatelessWidget {
  const GameOnDiscountCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Game product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 194,
      margin: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          DetailsScreen.routeName,
          arguments: GameDetailsArguments(game: product),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                product.cover!,
                fit: BoxFit.cover,
              ),
            ),

            // Contenido en la parte inferior
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   right: 0,
            //   child: Container(
            //     height: 100,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         gradient: const LinearGradient(
            //             begin: Alignment.topCenter,
            //             end: Alignment.bottomCenter,
            //             colors: [
            //               Color.fromRGBO(0, 0, 0, 0),
            //               Color.fromARGB(234, 0, 0, 0)
            //             ])),
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisAlignment: MainAxisAlignment.end,
            //       children: [
            //         Text(
            //           product.name!,
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: getProportionateScreenHeight(15),
            //             fontWeight: FontWeight.bold,
            //           ),
            //           maxLines: 2,
            //           overflow: TextOverflow.ellipsis,
            //         ),
            //         const SizedBox(height: 4),
            //         Text(
            //           "\$${product.price!.toStringAsFixed(2)}",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: getProportionateScreenHeight(14),
            //             fontWeight: FontWeight.w500,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
    // return Container(
    //   width: 154,
    //   height: 150,
    //   margin: const EdgeInsets.only(left: 20),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       // Imagen del juego con borde redondeado
    //       ClipRRect(
    //         borderRadius: BorderRadius.circular(10),
    //         child: Image.asset(
    //           product.cover!,
    //           fit: BoxFit.cover,
    //         ),
    //       ),

    //       // Nombre del juego
    //       Text(
    //         product.name!,
    //         style: const TextStyle(
    //           color: Colors.black,
    //           fontSize: 14,
    //           fontWeight: FontWeight.bold,
    //         ),
    //         maxLines: 2,
    //         overflow: TextOverflow.ellipsis,
    //       ),
    //       // Precio del juego
    //       Text(
    //         "\$${product.price!.toStringAsFixed(2)}",
    //         style: const TextStyle(
    //           color: Colors.black,
    //           fontSize: 12,
    //           fontWeight: FontWeight.w500,
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    // return Padding(
    //   padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
    //   child: SizedBox(
    //     width: getProportionateScreenWidth(width),
    //     child: GestureDetector(
    //       onTap: () => (
    //         //Navigator.pushNamed(
    //         context,
    //         //DetailsScreen.routeName,
    //         //arguments: ProductDetailsArguments(product: product),
    //       ),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           // AspectRatio(
    //           //     aspectRatio: 1.02,
    //           //child:
    //           // Container(
    //           //   width: getProportionateScreenWidth(154),
    //           //   height: getProportionateScreenHeight(174),
    //           //   decoration:
    //           //       BoxDecoration(borderRadius: BorderRadius.circular(20)),
    //           //   child: Image.asset(
    //           //     product.cover!,
    //           //     fit: BoxFit.fitHeight,
    //           //   ),
    //           // ),

    //           Hero(
    //             tag: product.id.toString(),
    //             child: Container(
    //               decoration:
    //                   BoxDecoration(borderRadius: BorderRadius.circular(20)),
    //               child: Image.asset(
    //                 product.cover!,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ),

    //           const SizedBox(height: 10),
    //           Text(
    //             product.name!,
    //             style: const TextStyle(color: kTextColor),
    //             maxLines: 2,
    //           ),
    //           // Row(
    //           //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           //   children: [
    //           //     Text(
    //           //       "\$${product.price}",
    //           //       style: TextStyle(
    //           //         fontSize: getProportionateScreenWidth(18),
    //           //         fontWeight: FontWeight.w600,
    //           //         color: kPrimaryColor,
    //           //       ),
    //           //     ),
    //           //     // InkWell(
    //           //     //   borderRadius: BorderRadius.circular(50),
    //           //     //   onTap: () {},
    //           //     //   child: Container(
    //           //     //     padding: EdgeInsets.all(getProportionateScreenWidth(8)),
    //           //     //     height: getProportionateScreenWidth(28),
    //           //     //     width: getProportionateScreenWidth(28),
    //           //     //     decoration: const BoxDecoration(
    //           //     //       shape: BoxShape.circle,
    //           //     //     ),
    //           //     //   ),
    //           //     // ),
    //           //   ],
    //           // )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    // return Container(
    //     decoration: const BoxDecoration(
    //       borderRadius: BorderRadius.all(Radius.circular(20)),
    //       boxShadow: <BoxShadow>[
    //         BoxShadow(
    //             color: Color(0xfff8f8f8), blurRadius: 15, spreadRadius: 10),
    //       ],
    //     ),
    //     child: Container(
    //       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //       child: Stack(
    //         alignment: Alignment.center,
    //         children: <Widget>[
    //           Column(
    //             //crossAxisAlignment: CrossAxisAlignment.center,
    //             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: <Widget>[
    //               Expanded(
    //                 child: Stack(
    //                   alignment: Alignment.center,
    //                   children: <Widget>[Image.asset(product.cover!)],
    //                 ),
    //               ),
    //               // // SizedBox(height: 5),
    //               // TitleText(
    //               //   text: product.name,
    //               //   fontSize: product.isSelected ? 16 : 14,
    //               // ),
    //               // TitleText(
    //               //   text: product.category,
    //               //   fontSize: product.isSelected ? 14 : 12,
    //               //   color: LightColor.orange,
    //               // ),
    //               // TitleText(
    //               //   text: product.price.toString(),
    //               //   fontSize: product.isSelected ? 18 : 16,
    //               // ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     )
    //     // .ripple(() {
    //     //   Navigator.of(context).pushNamed('/detail');
    //     //   onSelected(product);
    //     // }, borderRadius: BorderRadius.all(Radius.circular(20))),
    //     );
  }
}
