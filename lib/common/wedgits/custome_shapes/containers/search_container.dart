import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.searchText,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.all(TSizes.defaultSpace),
  });
  final String searchText;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        // width: TDeviceUtils.getScreenWidth(context),
        // padding: const EdgeInsets.all(TSizes.md),
        decoration: InputDecoration(
          labelText: searchText,
          suffixIcon: Icon(icon),
          filled: true,
          fillColor:
              showBackground
                  ? dark
                      ? TColors.dark
                      : TColors.light
                  : Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),

            borderSide: BorderSide(color: TColors.grey),
          ),
        ),
      ),
    );
  }
}
