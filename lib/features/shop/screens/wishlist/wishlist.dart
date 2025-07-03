import 'package:shopping_ui/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(TTexts.WishlistString)),
      body: const Center(child: Text('Favourite/Wishlist Screen')),
    );
  }
}
