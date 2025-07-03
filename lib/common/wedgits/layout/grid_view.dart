import 'package:shopping_ui/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisExtent: mainAxisExtent,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisSpacing: TSizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
