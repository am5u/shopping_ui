import 'package:shopping_ui/common/wedgits/appbar/appbar.dart';
import 'package:shopping_ui/common/wedgits/custome_shapes/containers/primary_header_container.dart';
import 'package:shopping_ui/common/wedgits/list_tile/setting_menu_tile.dart';
import 'package:shopping_ui/common/wedgits/list_tile/user_profile_tile.dart';
import 'package:shopping_ui/common/wedgits/texts/section_heading.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/constants/image_strings.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/constants/text_strings.dart';
import 'package:shopping_ui/utils/helpers/helper_functions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentLocale = context.locale;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      TTexts.ProfileString,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: TColors.white),
                    ),
                  ),
                  TUserProfileTile(
                    image: TImages.user,
                    name: 'Ammar Mohamed',
                    email: "ammareldesouki130@gmail.com",
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(title: "Account Setting"),
                  SizedBox(height: TSizes.spaceBtwItems),
            
                  TSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subtitle: "Add , remove product and Checkout",
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Order",
                    subtitle: "In Progress ,Complete Order",
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.notification,
                    title: "My Notification",
                    subtitle: "Set any king of notification message",
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subtitle: "Mange data usage and connected accounts",
                  ),

                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(
                    title: "App Setting",
                    showActionButton: false,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingMenuTile(
                    icon: Iconsax.settings,
                    title: "App Language",
                    subtitle:
                        "${TTexts.Languge} (${currentLocale.languageCode.toUpperCase()})",
                    onTap: () {
                      THelperFunctions.toggleLanguage(context);
                    },
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.settings,
                    title: "App Theme",
                    subtitle: "Dark Mode",
                    trailing: Switch(value: false, onChanged: (value) {}),
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
