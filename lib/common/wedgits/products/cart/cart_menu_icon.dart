import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterICon extends StatelessWidget {
  const TCartCounterICon({
    super.key,
    required this.OnPressed,
    required this.iconcolor,
  });
  final VoidCallback OnPressed;
  final Color iconcolor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.shopping_bag, color: iconcolor),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: iconcolor,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
