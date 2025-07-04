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

class TProductCardHorizontal extends StatefulWidget {
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
  State<TProductCardHorizontal> createState() => _TProductCardHorizontalState();
}

class _TProductCardHorizontalState extends State<TProductCardHorizontal> {
  bool isFavourite = false;
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.locale;
    final dark = THelperFunctions.isDarkMode(context);
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: () {},
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [
              TShadowStyle.verticalProductShadow,
              if (isHovered)
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 15,
                  offset: Offset(0, 8),
                ),
            ],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkGrey : TColors.white,
          ),
          transform:
              isHovered
                  ? Matrix4.translationValues(0, -5, 0)
                  : Matrix4.identity(),
          child: Column(
            children: [
              TRoundedContainer(
                hight: 180,
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: dark ? TColors.dark : TColors.light,
                child: Stack(
                  children: [
                    TRoundedImage(
                      imageUrl: widget.imageUrl,
                      applyImageRadius: true,
                      fit: BoxFit.cover,
                      isNetwork: widget.isNetwork,
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
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isFavourite = !isFavourite;
                            });
                          },
                          child: TCircularIcon(
                            icon: Iconsax.heart5,
                            color: isFavourite ? Colors.red : Colors.black,
                          ),
                        ),
                      )
                    else
                      Positioned(
                        top: 0,
                        left: 0,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isFavourite = !isFavourite;
                            });
                          },
                          child: TCircularIcon(
                            icon: Iconsax.heart5,
                            color: isFavourite ? Colors.red : Colors.black,
                          ),
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
                    TProductTitleText(
                      title: widget.nameProduct,
                      smallSize: false,
                    ),
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
                        TProductPriceText(price: widget.price),
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
                          child: GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Item added to cart'),
                                  backgroundColor: TColors.primary,
                                  duration: Duration(seconds: 2),
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              );
                            },
                            child: const SizedBox(
                              width: TSizes.iconLg * 1.2,
                              height: TSizes.iconLg * 1.2,
                              child: Center(
                                child: Icon(Iconsax.add, color: TColors.white),
                              ),
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
      ),
    );
  }
}
