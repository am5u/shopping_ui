import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    required this.imageUrl,
    this.onpress,
    this.isNetwork = false,
    this.background = TColors.light,
    this.fit,
    this.padding,
    this.applyImageRadius = true,
    this.width,
    this.hight,
    this.border,
    this.borderRadius = TSizes.md,
  });
  final String imageUrl;
  final bool isNetwork;
  final VoidCallback? onpress;
  final Color background;
  final BoxBorder? border;
  final double borderRadius;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool applyImageRadius;
  final double? width, hight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: width,
        height: hight,
        decoration: BoxDecoration(
          border: border,
          color: background,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius:
              applyImageRadius
                  ? BorderRadius.circular(TSizes.md)
                  : BorderRadius.zero,
          child: SizedBox(
            width: double.infinity,
            child: Image(
              fit: fit,
              image:
                  isNetwork
                      ? NetworkImage(imageUrl)
                      : AssetImage(imageUrl) as ImageProvider,
            ),
          ),
        ),
      ),
    );
  }
}
