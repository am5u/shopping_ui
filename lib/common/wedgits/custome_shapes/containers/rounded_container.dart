import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  final double? width;
  final double? hight;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const TRoundedContainer({
    super.key,
    this.width,
    this.hight,
    this.radius = TSizes.cardRadiusLg,
    this.showBorder = false,
    this.borderColor = TColors.buttonPrimary,
    this.backgroundColor = TColors.white,
    this.padding,
    this.margin,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),

      child: child,
    );
  }
}
