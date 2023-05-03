import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final EdgeInsets margin;
  final BorderRadius borderRadius;
  final Color color;
  final VoidCallback onTap;

  const CustomContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.margin,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: color,
        ),
      ),
    );
  }
}
