import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/utils/icons.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear_outlined),
                AppIcon(icon: Icons.shopping_cart)
              ],
            ),
            pinned: true,
            expandedHeight: 300,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height20),
              child: Container(
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius12),
                        topRight: Radius.circular(Dimensions.radius12))),
                child: Center(child: BigText(text: 'Chinese Side')),
              ),
            ),
            backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/image1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Dimensions.width20,
                      vertical: Dimensions.height20),
                  child: const ExpandableTextWidget(
                      text:
                          'RecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetailRecommendedFoodDetail'),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width45, vertical: Dimensions.height20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppIcon(icon: Icons.remove),
                BigText(text: '\$12.88  X  0'),
                const AppIcon(icon: Icons.add)
              ],
            ),
          ),
          Container(
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
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius12),
                        color: Colors.white),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.blue,
                    )),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.width10,
                      vertical: Dimensions.height10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius12),
                      color: Colors.green.withOpacity(0.6)),
                  child: BigText(
                    text: '\$10 | Add to Cart',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
