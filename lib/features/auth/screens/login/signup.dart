import "package:shopping_ui/features/shop/screens/home/home.dart";
import "package:shopping_ui/utils/constants/colors.dart";
import "package:shopping_ui/utils/constants/image_strings.dart";
import "package:shopping_ui/utils/constants/text_strings.dart";
import "package:shopping_ui/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:shopping_ui/utils/constants/sizes.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final _formKey = GlobalKey<FormState>();
    final TextEditingController firstController = TextEditingController();
        final TextEditingController secondController = TextEditingController();

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: SafeArea(
            child: Column(
              children: [
          

                Text(
                  TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: TSizes.spaceBtwSections),

                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: TSizes.spaceBtwSections,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: firstController,
                                validator:(value) {

                                },
                                expands: false,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Iconsax.user),
                                  labelText: TTexts.firstName,
                                ),
                              ),
                            ),
                            SizedBox(width: TSizes.spaceBtwInputFields),

                            Expanded(
                              child: TextFormField(
                                expands: false,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Iconsax.user),
                                  labelText: TTexts.lastName,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: TSizes.spaceBtwInputFields),

                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.user_edit),
                            labelText: TTexts.username,
                          ),
                        ),

                        const SizedBox(height: TSizes.spaceBtwInputFields),

                        TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return TTexts.canot_be_null;
                            } else if (!value.contains('@')) {
                              return TTexts.invildEmail;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.direct),
                            labelText: TTexts.email,
                          ),
                        ),

                        const SizedBox(height: TSizes.spaceBtwInputFields),

                        SizedBox(height: TSizes.spaceBtwInputFields),

                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.call),
                            labelText: TTexts.phoneNo,
                          ),
                        ),

                        const SizedBox(height: TSizes.spaceBtwInputFields),

                        TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return TTexts.canot_be_null;
                            } else if (value.length < 6) {
                              return TTexts.invildPassword;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: TTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),

                        const SizedBox(height: TSizes.spaceBtwInputFields),

                        TextFormField(
                          controller: confirmPasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return TTexts.canot_be_null;
                            } else if (value != passwordController.text) {
                              return  TTexts.passwordNotMatch;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: "Confirm Password",
                            suffixIcon: Icon(Iconsax.eye_slash),
                          ),
                        ),

                        const SizedBox(height: TSizes.spaceBtwSections),

                        Row(
                          children: [
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                            ),
                            const SizedBox(width: TSizes.spaceBtwItems),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: TTexts.iAgreeTo,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  TextSpan(
                                    text: TTexts.privacyPolicy,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium!.apply(
                                      color:
                                          dark
                                              ? TColors.white
                                              : TColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          dark
                                              ? TColors.white
                                              : TColors.primary,
                                    ),
                                  ),
                                  TextSpan(
                                    text: TTexts.and,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  TextSpan(
                                    text: TTexts.privacyPolicy,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium!.apply(
                                      color:
                                          dark
                                              ? TColors.white
                                              : TColors.primary,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          dark
                                              ? TColors.white
                                              : TColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                THelperFunctions.navigateToScreen(
                                  context,
                                  HomeScreen(),
                                );
                              }
                            },
                            child: Text(TTexts.createAccount),
                          ),
                        ),
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
