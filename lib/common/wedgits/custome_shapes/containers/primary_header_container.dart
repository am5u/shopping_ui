import 'package:shopping_ui/common/wedgits/custome_shapes/containers/circular_container.dart';
import 'package:shopping_ui/common/wedgits/custome_shapes/curved_edges/curved_edges_widget.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        child: Stack(
          children: [
            child,
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                backgroundcolor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,

              child: TCircularContainer(
                backgroundcolor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
