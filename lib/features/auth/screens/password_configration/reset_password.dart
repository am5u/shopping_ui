import 'package:shopping_ui/navigation_menu.dart';
import 'package:shopping_ui/features/auth/screens/login/login.dart';
import 'package:shopping_ui/utils/constants/image_strings.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/constants/text_strings.dart';
import 'package:shopping_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: NavigationMenu(),

      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              THelperFunctions.navigateToScreen(context, LoginScreen());
            },
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(TImages.deliveredInPlaneIllustration),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              Text(
                TTexts.forgetPassword,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(TTexts.done),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
