import 'package:shopping_ui/features/shop/screens/store/wedgits/card_course_slide.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key, required this.banners});
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220, // Adjust height as needed
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: banners.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
            child: TCardCoursSlide(
              imageUrl: banners[index],
              applyImageRadius: true,
              width: 280,
              hight: 150,
            ),
          );
        },
      ),
    );
  }
}
