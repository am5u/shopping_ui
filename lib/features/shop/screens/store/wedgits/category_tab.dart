import 'package:shopping_ui/common/wedgits/layout/grid_view.dart';
import 'package:shopping_ui/common/wedgits/products/product_cards/course_card.dart';
import 'package:shopping_ui/features/shop/model/course_model.dart';
import 'package:shopping_ui/features/shop/model/course_service.dart';
import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatefulWidget {
  final String category;

  const TCategoryTab({super.key, required this.category});

  @override
  State<TCategoryTab> createState() => _TCategoryTabState();
}

class _TCategoryTabState extends State<TCategoryTab> {
  List<Course> courses = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadCourses();
  }

  Future<void> loadCourses() async {
    await CourseService.loadCourses();
    final filteredCourses = CourseService.getCoursesByCategory(widget.category);
    setState(() {
      courses = filteredCourses;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (courses.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.school_outlined, size: 64, color: Colors.grey[400]),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(
              'No courses found for ${widget.category}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: TGridLayout(
        itemCount: courses.length,
        mainAxisExtent: 320,
        itemBuilder: (context, index) {
          return CourseCard(course: courses[index]);
        },
      ),
    );
  }
}
