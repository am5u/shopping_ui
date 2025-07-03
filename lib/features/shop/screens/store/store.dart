import 'package:shopping_ui/common/wedgits/appbar/appbar.dart';
import 'package:shopping_ui/common/wedgits/appbar/tabbar.dart';
import 'package:shopping_ui/common/wedgits/custome_shapes/containers/search_container.dart';
import 'package:shopping_ui/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shopping_ui/features/shop/screens/store/wedgits/category_tab.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/image_strings.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/constants/text_strings.dart';
import 'package:shopping_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: TAppBar(),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                backgroundColor:
                    THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      TSearchContainer(
                        searchText: TTexts.SearchBarText,
                        showBackground: true,
                      ),
                      SizedBox(height: TSizes.spaceBtwSections),

                      TPromoSlider(
                        banners: [
                          TImages.banner1,
                          TImages.banner2,
                          TImages.banner3,
                        ],
                      ),
                    ],
                  ),
                ),
                bottom: TTabBar(
                  tabs: [
                    Text("All"),
                    Text("C++"),
                    Text("Java"),
                    Text("Sql"),
                    Text("Java Script"),
                    Text("Python"),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              TCategoryTab(category: "All"),
              TCategoryTab(category: "C++"),
              TCategoryTab(category: "Java"),
              TCategoryTab(category: "Sql"),
              TCategoryTab(category: "Java Script"),
              TCategoryTab(category: "Python"),
            ],
          ),
        ),
      ),
    );
  }
}
