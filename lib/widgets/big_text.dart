import 'dart:ui';

import 'package:e_commerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText(
      {super.key,
      this.color = AppColors.mainHeader,
      required this.text,
      this.size = 20,
      this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
