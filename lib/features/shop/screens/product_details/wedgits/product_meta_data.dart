import 'package:shopping_ui/common/wedgits/custome_shapes/containers/rounded_container.dart';
import 'package:shopping_ui/common/wedgits/texts/t_product_price.dart';
import 'package:shopping_ui/common/wedgits/texts/t_product_text.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          children: [
            TRoundedContainer(
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
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              "\$250",
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems),
            TProductPriceText(price: "175", isLarge: true),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),
        TProductTitleText(title: "GReen Nike Shose"),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            TProductTitleText(title: "Status"),
            SizedBox(height: TSizes.spaceBtwItems),
            Text("In stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),
      ],
    );
  }
}
