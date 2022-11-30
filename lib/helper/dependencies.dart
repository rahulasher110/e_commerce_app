import 'package:e_commerce_app/controller/popular_products_controller.dart';
import 'package:e_commerce_app/data/api/api_client.dart';
import 'package:e_commerce_app/data/repository/popular_products.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() =>
      ApiClient(appBaseUrl: "https://www.dbestech.com")); // load apiclient

  // load repo

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // load controller

  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
