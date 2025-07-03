import 'package:easy_localization/easy_localization.dart';
import 'package:shopping_ui/common/styles/shadows.dart';
import 'package:shopping_ui/common/wedgits/products/product_cards/product_card_vertical.dart';
import 'package:shopping_ui/features/shop/model/course_model.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.locale;
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: TProductCardVertical(
          imageUrl: course.imageUrl,
          nameProduct: course.title,
          price: course.price,
          isNetwork: course.isNetwork,
        ),
      ),
    );
  }
}
