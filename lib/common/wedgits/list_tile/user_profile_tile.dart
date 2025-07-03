import 'package:shopping_ui/common/wedgits/images/t_rounded_image.dart';
import 'package:shopping_ui/features/personlization/screens/profile/profile.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    required this.name,
    required this.image,
    required this.email,
  });
  final String name;
  final String image;
  final String email;
  // final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
      },
      child: ListTile(
        leading: TRoundedImage(
          imageUrl: image,
          width: 50,
          hight: 50,
          fit: BoxFit.cover,
        ),
        title: Text(
          name,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: Colors.white),
        ),
        subtitle: Text(
          email,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium!.apply(color: TColors.white),
        ),
        trailing: Icon(Iconsax.edit, color: TColors.white),
      ),
    );
  }
}
