import 'dart:ui';

import 'package:e_commerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  SmallText({
    super.key,
    this.color = AppColors.smallHeader,
    required this.text,
    this.size = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.w400),
    );
  }
}
