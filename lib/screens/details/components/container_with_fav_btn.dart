import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_aap/model/product.dart';

import 'cart_counter.dart';

class ContainerWithFavBtn extends StatelessWidget {
  const ContainerWithFavBtn({super.key,required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(6),
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Color(0xffff6464),
            shape: BoxShape.circle
          ),
          child:
          SvgPicture.asset('assets/icons/heart.svg'),)
      ],
    );
  }
}
