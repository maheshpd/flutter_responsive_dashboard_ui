import 'package:dashboard_ui/style/colors.dart';
import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String? text;
  final double height;
  const PrimaryText({
    super.key,
    this.size = 20,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.primary,
    this.text,
    this.height = 1.3,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
          color: color,
          height: height,
          fontFamily: 'Poppins',
          fontSize: size,
          fontWeight: fontWeight),
    );
  }
}
