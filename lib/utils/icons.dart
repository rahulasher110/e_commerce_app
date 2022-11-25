import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double size;
  final Color backgroundColor;
  const AppIcon(
      {super.key,
      required this.icon,
      this.iconColor = Colors.white,
      this.size = 0,
      this.backgroundColor = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size == 0 ? Dimensions.iconContainerSize : size,
      height: size == 0 ? Dimensions.iconContainerSize : size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.iconContainerSize / 2),
          color: backgroundColor),
      child: Icon(
        icon,
        color: iconColor,
        size: Dimensions.iconSize16,
      ),
    );
  }
}
