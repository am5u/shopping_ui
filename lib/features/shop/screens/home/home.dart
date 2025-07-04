import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_ui/common/wedgits/custome_shapes/containers/primary_header_container.dart';
import 'package:shopping_ui/common/wedgits/custome_shapes/containers/search_container.dart';
import 'package:shopping_ui/common/wedgits/layout/grid_view.dart';
import 'package:shopping_ui/common/wedgits/products/product_cards/product_card_vertical.dart';
import 'package:shopping_ui/common/wedgits/texts/section_heading.dart';

import 'package:shopping_ui/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shopping_ui/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shopping_ui/features/shop/screens/home/widgets/hot_offers.dart';

import 'package:shopping_ui/utils/constants/image_strings.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  TSearchContainer(searchText: TTexts.SearchBarText),
                  SizedBox(height: TSizes.spaceBtwSections),

                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Category',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            // Body
            Column(
              children: [
                TPromoSlider(
                  banners: [
                    TImages.banner4,
                    TImages.banner5,
                    TImages.banner6,
                    TImages.banner7,
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Center(
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Our Product',
                          showActionButton: true,
                          onPressed: () {},
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        TGridLayout(
                          itemCount: 8,
                          mainAxisExtent: 320,
                          itemBuilder: (context, index) {
                            return TProductCardVertical(
                              imageUrl: TImages.productImage11,
                              nameProduct: "C++",
                              price: "20",
                            );
                          },
                        ),
                        const SizedBox(height: 32),
                        HotOffers(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
