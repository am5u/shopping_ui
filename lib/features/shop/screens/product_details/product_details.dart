import 'package:shopping_ui/common/wedgits/texts/section_heading.dart';
import 'package:shopping_ui/features/shop/screens/product_details/wedgits/product_attributes.dart';
import 'package:shopping_ui/features/shop/screens/product_details/wedgits/product_image_details_slider.dart';
import 'package:shopping_ui/features/shop/screens/product_details/wedgits/product_meta_data.dart';
import 'package:shopping_ui/features/shop/screens/product_details/wedgits/rating_and_share_wedgits.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Column(
        children: [
          TProductImageSlider(),
          Padding(
            padding: EdgeInsets.only(
              right: TSizes.defaultSpace,
              left: TSizes.defaultSpace,
              bottom: TSizes.defaultSpace,
            ),
            child: Column(
              children: [
                TRatingAndShare(),
                TProductMetaData(),
                TProductAttributes(),
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Checkout"),
                  ),
                ),
                SizedBox(height: TSizes.spaceBtwSections),
                TSectionHeading(title: "Description"),
                SizedBox(height: TSizes.spaceBtwItems),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
