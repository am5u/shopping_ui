import 'package:shopping_ui/common/wedgits/appbar/appbar.dart';
import 'package:shopping_ui/common/wedgits/custome_shapes/curved_edges/curved_edges_widget.dart';
import 'package:shopping_ui/common/wedgits/images/t_rounded_image.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/image_strings.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return SingleChildScrollView(
      child: Stack(
        children: [
          TCurvedEdgeWidget(
            child: Container(color: dark ? TColors.dark : TColors.light),
          ),
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(TSizes.productImageRadius * 2),
              child: Center(
                child: Image(image: AssetImage(TImages.productImage1)),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            left: TSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder:
                    (_, index) => Expanded(
                      child: TRoundedImage(
                        width: 80,
                        background: dark ? TColors.dark : TColors.light,
                        imageUrl: TImages.productImage12,
                        border: Border.all(color: TColors.primary),
                        padding: const EdgeInsets.all(TSizes.sm),
                      ),
                    ),
                separatorBuilder:
                    (_, _) => SizedBox(width: TSizes.spaceBtwItems),
              ),
            ),
          ),
          const TAppBar(showBackArrow: true, actions: [Icon(Iconsax.heart5)]),
        ],
      ),
    );
  }
}
