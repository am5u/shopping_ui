import 'package:shopping_ui/common/wedgits/custome_shapes/containers/circular_container.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar:
          isColor
              ? TCircularContainer(
                width: 50,
                height: 50,
                backgroundcolor: THelperFunctions.getColor(text)!,
              )
              : null,
      shape: isColor ? CircleBorder() : null,
      labelPadding: isColor ? EdgeInsets.all(0) : null,
      padding: isColor ? EdgeInsets.all(0) : null,
      selectedColor: Colors.green,
      backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
    );
  }
}
