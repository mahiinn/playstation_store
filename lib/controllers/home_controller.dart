// import 'package:get/get.dart';

// import '../models/game.dart';
// import '../models/user.dart';

// class HomeController extends GetxController {
//   final _productService = ProductService();

//   late final User user;
//   late final List<Product> popularGame;
//   late final List<Product> newestGame;

//   @override
//   void onInit() {
//     super.onInit();

//     user = user.getUserLogin();
//     popularGame = _productService.getPopularGame();
//     newestGame = _productService.getNewestGame();
//   }

//   // void goToDetail(Product product, {required String heroTag}) {
//   //   Get.toNamed(
//   //     Routes.productDetail,
//   //     arguments: product,
//   //     parameters: {'hero_tag': "$heroTag"},
//   //   );
//   // }

//   String getPopularGameTag(Product product) {
//     return "popular_game=${product.id}";
//   }

//   String getNewestGameTag(Product product) {
//     return "newest_game=${product.id}";
//   }
// }
