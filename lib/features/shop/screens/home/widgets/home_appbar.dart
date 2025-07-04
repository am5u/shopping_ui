import 'package:shopping_ui/common/wedgits/appbar/appbar.dart';
import 'package:shopping_ui/common/wedgits/products/cart/cart_menu_icon.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        children: [
          Text(
            "Home",
            // TTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: TColors.grey),
          ),

          Text(
            "Shoping App",
            // TTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: TColors.white),
          ),
        ],
      ),
      actions: [TCartCounterICon(OnPressed: () {}, iconcolor: TColors.white)],
    );
  }
}
