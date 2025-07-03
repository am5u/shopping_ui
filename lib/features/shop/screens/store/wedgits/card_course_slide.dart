import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCardCoursSlide extends StatelessWidget {
  const TCardCoursSlide({
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
    // TODO: implement build
    return GestureDetector(
      onTap: onpress,
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: width,
                height: hight,
                decoration: BoxDecoration(
                  border: border,
                  color: background,
                  borderRadius: BorderRadius.circular(borderRadius),
                  image: DecorationImage(
                    image:
                        isNetwork
                            ? NetworkImage(imageUrl)
                            : AssetImage(imageUrl) as ImageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: SizedBox(
                width: 225,
                height: 25,
                child: Column(
                  children: [
                    Text(
                      "Data Science Fundamentals",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "Learn the basics of data analysis and visualization.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
