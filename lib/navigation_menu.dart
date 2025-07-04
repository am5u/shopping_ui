import 'package:shopping_ui/features/personlization/screens/settings/settings.dart';
import 'package:shopping_ui/features/shop/screens/home/home.dart';
import 'package:shopping_ui/features/shop/screens/wishlist/wishlist.dart';
import 'package:shopping_ui/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:
              (index) => controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: TTexts.HomeString,
            ),

            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: TTexts.WishlistString,
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: TTexts.ProfileString,
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}
