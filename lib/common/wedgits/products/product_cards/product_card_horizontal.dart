import 'package:easy_localization/easy_localization.dart';
import 'package:shopping_ui/common/styles/shadows.dart';
import 'package:shopping_ui/common/wedgits/custome_shapes/containers/rounded_container.dart';
import 'package:shopping_ui/common/wedgits/icons/t_circular_icon.dart';
import 'package:shopping_ui/common/wedgits/images/t_rounded_image.dart';
import 'package:shopping_ui/common/wedgits/texts/t_product_price.dart';
import 'package:shopping_ui/common/wedgits/texts/t_product_text.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  final String imageUrl;
  final String nameProduct;
  final String price;
  final bool isNetwork;

  const TProductCardHorizontal({
    super.key,
    required this.imageUrl,
    required this.nameProduct,
    required this.price,
    this.isNetwork = false,
  });

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.locale;
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,

        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              hight: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  TRoundedImage(
                    imageUrl: imageUrl,
                    applyImageRadius: true,
                    fit: BoxFit.cover,
                    isNetwork: isNetwork,
                  ),

                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm,
                        vertical: TSizes.xs,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: TColors.black),
                      ),
                    ),
                  ),
                  if (currentLocale.languageCode == 'en')
                    Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ),
                    )
                  else
                    Positioned(
                      top: 0,
                      left: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: nameProduct, smallSize: false),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        "nike",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: TSizes.sm),
                      const Icon(
                        Iconsax.verify,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TProductPriceText(price: price),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusLg),
                            bottomRight: Radius.circular(
                              TSizes.productImageSize,
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: TColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
