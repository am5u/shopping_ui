import 'package:shopping_ui/common/wedgits/image_text_wedgits/vertical_image_text.dart';
import 'package:shopping_ui/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class THomeCtagory extends StatelessWidget {
  const THomeCtagory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,

        itemBuilder: (_, index) {
          final categories = [
            {'image': TImages.Html, 'title': 'HTML'},
            {'image': TImages.CPlus, 'title': 'C++'},
            {'image': TImages.Jave, 'title': 'Java'},
            {'image': TImages.JavaScript, 'title': 'JavaScript'},
            {'image': TImages.Python, 'title': 'Python'},
            {'image': TImages.Sql, 'title': 'Sql'},
          ];

          return TverticalImageText(
            image: categories[index]['image']!,
            title: categories[index]['title']!,
            onTap: () {},
          );
        },
      ),
    );
  }
}
