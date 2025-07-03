import 'package:shopping_ui/common/wedgits/appbar/appbar.dart';
import 'package:shopping_ui/common/wedgits/images/t_rounded_image.dart';
import 'package:shopping_ui/common/wedgits/texts/section_heading.dart';
import 'package:shopping_ui/features/personlization/screens/profile/widgets/profile_menu.dart';
import 'package:shopping_ui/utils/constants/image_strings.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: const Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TRoundedImage(imageUrl: TImages.user, width: 80, hight: 80),
                    TextButton(
                      onPressed: () {},
                      child: Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: TSizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(title: "Profile Information"),
              SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(
                title: 'Name',
                value: 'AmmarMohamed',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'User Name',
                value: 'am5u_',
                onPressed: () {},
              ),

              TProfileMenu(
                title: 'Name',
                value: 'AmmarMohamed',
                onPressed: () {},
              ),

              SizedBox(height: TSizes.spaceBtwItems),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(title: "Personal Information"),
              SizedBox(height: TSizes.spaceBtwItems),
              TProfileMenu(
                title: 'User_id',
                value: '#23423',
                onPressed: () {},
                icon: Iconsax.copy,
              ),
              TProfileMenu(
                title: 'E-mail',
                value: 'ammareldesouki130@gmail.com',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'PhoneNumber',
                value: '01067204840',
                onPressed: () {},
              ),
              TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              TProfileMenu(
                title: 'Date-of-birth',
                value: '1 june 2004',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
