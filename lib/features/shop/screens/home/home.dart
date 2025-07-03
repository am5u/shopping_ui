import 'package:shopping_ui/common/wedgits/custome_shapes/containers/primary_header_container.dart';
import 'package:shopping_ui/common/wedgits/custome_shapes/containers/search_container.dart';
import 'package:shopping_ui/common/wedgits/layout/grid_view.dart';
import 'package:shopping_ui/common/wedgits/products/product_cards/course_card.dart';
import 'package:shopping_ui/common/wedgits/texts/section_heading.dart';
import 'package:shopping_ui/features/shop/model/course_model.dart';
import 'package:shopping_ui/features/shop/model/course_service.dart';
import 'package:shopping_ui/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shopping_ui/features/shop/screens/home/widgets/home_category.dart';
import 'package:shopping_ui/features/shop/screens/home/widgets/promo_slider.dart';

import 'package:shopping_ui/utils/constants/image_strings.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:shopping_ui/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Course> courses = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadCourses();
  }

  Future<void> loadCourses() async {
    await CourseService.loadCourses();
    final allCourses = CourseService.getAllCourses();
    setState(() {
      courses = allCourses;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  TSearchContainer(searchText: TTexts.SearchBarText),
                  SizedBox(height: TSizes.spaceBtwSections),

                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Category',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        THomeCtagory(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            // Body
            Column(
              children: [
                TPromoSlider(
                  banners: [TImages.banner1, TImages.banner2, TImages.banner3],
                ),

                Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'All Courses',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      if (isLoading)
                        const Center(child: CircularProgressIndicator())
                      else if (courses.isEmpty)
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.school_outlined,
                                size: 64,
                                color: Colors.grey[400],
                              ),
                              SizedBox(height: TSizes.spaceBtwItems),
                              Text(
                                'No courses available',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        )
                      else
                        TGridLayout(
                          itemCount: courses.length,
                          mainAxisExtent: 320,
                          itemBuilder: (context, index) {
                            return CourseCard(course: courses[index]);
                          },
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
