import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/icons_and_text.dart';
import 'package:e_commerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AppColumns extends StatelessWidget {
  final String title;
  const AppColumns({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: title),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.blue,
                        size: Dimensions.iconSize16,
                      )),
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: "4.5"),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: "1287"),
            const SizedBox(
              width: 4,
            ),
            SmallText(text: "comments")
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconsAndTextWidget(
                icon: Icons.circle, text: "normal", iconColor: Colors.blue),
            IconsAndTextWidget(
                icon: Icons.location_on_outlined,
                text: "1.7m",
                iconColor: Colors.blue),
            IconsAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "32 min",
                iconColor: Colors.blue)
          ],
        )
      ],
    );
  }
}
