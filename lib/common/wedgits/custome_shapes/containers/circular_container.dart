import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.backgroundcolor = TColors.white,
    this.margin,
    this.child,
    this.padding = 0,
  });
  final double? width;
  final double? height;
  final double radius;
  final Color backgroundcolor;
  final Widget? child;
  final double padding;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundcolor.withOpacity(0.1),
        ),
      ),
    );
  }
}
