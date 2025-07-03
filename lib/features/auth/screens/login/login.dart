import "package:easy_localization/easy_localization.dart";
import "package:shopping_ui/common/styles/spacing_styles.dart";
import "package:shopping_ui/features/auth/screens/password_configration/reset_password.dart";
import "package:shopping_ui/features/auth/screens/login/signup.dart";
import "package:shopping_ui/navigation_menu.dart";
import "package:shopping_ui/utils/constants/colors.dart";
import "package:shopping_ui/utils/constants/image_strings.dart";
import "package:shopping_ui/utils/constants/text_strings.dart";
import "package:shopping_ui/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:shopping_ui/utils/constants/sizes.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String currentLang = context.locale.languageCode;

    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpaceStyle.paddingWithAppBarHeight,
          child: SafeArea(
            child: Column(
              children: [
                // header and logo
                Image(
                  height: 150,
                  image: AssetImage(
                    dark ? TImages.lightAppLogo : TImages.darkAppLogo,
                  ),
                ),

                Text(
                  "loginTitle",
                  style: Theme.of(context).textTheme.headlineMedium,
                ).tr(),
                SizedBox(height: TSizes.sm),
                Text(
                  "loginSubTitle",
                  style: Theme.of(context).textTheme.bodyMedium,
                ).tr(),
                // Form for login
                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spaceBtwSections,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TTexts.email,
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwInputFields),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                        Row(
                          //Remember Me
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Checkbox(value: true, onChanged: (value) {}),

                                Text(TTexts.rememberMe),
                              ],
                            ),

                            //forget password
                            TextButton(
                              onPressed: () {
                                THelperFunctions.navigateToScreen(
                                  context,
                                  ResetPasswordScreen(),
                                );
                              },
                              child: Text(TTexts.forgetPassword),
                            ),
                          ],
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed:
                                () => Get.offAll(() => const NavigationMenu()),
                            child: Text(TTexts.signIn),
                          ),
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              THelperFunctions.navigateToScreen(
                                context,
                                SignupScreen(),
                              );
                            },
                            child: Text(TTexts.createAccount),
                          ),
                        ),
                        SizedBox(height: TSizes.spaceBtwSections),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Divider(
                        color: dark ? TColors.darkGrey : TColors.grey,
                        thickness: 0.5,
                        indent: 60,
                        endIndent: 5,
                      ),
                    ),
                    Text(
                      TTexts.orSignInWith.capitalize!,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Flexible(
                      child: Divider(
                        color: dark ? TColors.darkGrey : TColors.grey,
                        thickness: 0.5,
                        indent: 5,
                        endIndent: 60,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: TSizes.spaceBtwSections),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.facebook),
                        ),
                      ),
                    ),
                    SizedBox(width: TSizes.spaceBtwItems),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.google),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
