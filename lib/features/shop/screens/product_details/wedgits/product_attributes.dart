import 'package:shopping_ui/common/wedgits/chips/choice_chip.dart';
import 'package:shopping_ui/common/wedgits/custome_shapes/containers/rounded_container.dart';
import 'package:shopping_ui/common/wedgits/texts/section_heading.dart';
import 'package:shopping_ui/common/wedgits/texts/t_product_price.dart';
import 'package:shopping_ui/common/wedgits/texts/t_product_text.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TSectionHeading(title: 'variation', showActionButton: false),

                  SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        children: [
                          const TProductTitleText(title: "price :"),
                          Text(
                            "\$25",
                            style: Theme.of(context).textTheme.titleMedium!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          TProductPriceText(price: "25"),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(title: "Stock :"),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              TProductTitleText(
                title: "This desccriptoion for product and it max line 4",
                smallSize: true,
                maxline: 4,
              ),
            ],
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),

        Column(
          children: [
            Wrap(
              children: [
                TSectionHeading(title: "Colors"),
                SizedBox(height: TSizes.spaceBtwItems / 2),
                TChoiceChip(
                  text: "Green",
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "Blue",
                  selected: false,
                  onSelected: (value) {},
                ),

                TChoiceChip(
                  text: "Yellow",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Wrap(
              spacing: TSizes.spaceBtwItems,
              children: [
                TSectionHeading(title: "Size"),
                SizedBox(height: TSizes.spaceBtwItems / 2),
                TChoiceChip(text: "34", selected: true, onSelected: (value) {}),
                TChoiceChip(
                  text: "20",
                  selected: false,
                  onSelected: (value) {},
                ),

                TChoiceChip(
                  text: "25",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
