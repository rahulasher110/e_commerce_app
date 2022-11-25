import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/utils/icons.dart';
import 'package:e_commerce_app/widgets/app_columns.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/icons_and_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PopularFoodDetailPage extends StatelessWidget {
  const PopularFoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: Dimensions.popularFoodImageSize,
                width: Dimensions.screenWidth,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/image1.jpg"))),
              )),
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_checkout)
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImageSize - 20,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          Dimensions.radius20,
                        ),
                        topRight: Radius.circular(Dimensions.radius20)),
                    color: Colors.white),
                child: Padding(
                    padding: EdgeInsets.only(
                        left: Dimensions.width20,
                        right: Dimensions.width20,
                        top: Dimensions.height20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppColumns(
                          title: 'Chinese Side',
                        ),
                        SizedBox(
                          height: Dimensions.height20,
                        ),
                        BigText(text: 'Introduce')
                      ],
                    )),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20),
                topRight: Radius.circular(Dimensions.radius20)),
            color: Colors.grey.withOpacity(0.3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width10,
                  vertical: Dimensions.height10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius12),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.remove),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  Icon(Icons.add)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width10,
                  vertical: Dimensions.height10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius12),
                  color: Colors.green),
              child: BigText(
                text: '\$10 | Add to Cart',
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
