import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({super.key,  this.currancySigh="\$ ", required this.price,  this.maxline=1,  this.isLarge=true,  this.lineTrough=false});
  final String currancySigh, price;
  final int maxline;
  final bool isLarge;
  final bool lineTrough;
  @override
  Widget build(BuildContext context) {
    return Text(
      currancySigh+price,
      maxLines: maxline,
      overflow: TextOverflow.ellipsis,
      style: 
      isLarge?
      
      Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineTrough?TextDecoration.lineThrough:null)
      :
            Theme.of(context).textTheme.headlineLarge!.apply(decoration: lineTrough?TextDecoration.lineThrough:null)


    );
  }
}
