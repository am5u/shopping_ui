import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  final String title;
  final bool smallSize;
  final int maxline;
  final TextAlign? textAlign;

  const TProductTitleText({super.key, required this.title, this.smallSize=false,  this.maxline=2, this.textAlign=TextAlign.left});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize? Theme.of(context).textTheme.labelLarge:Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxline,
      textAlign: textAlign,
    );
  }
}
