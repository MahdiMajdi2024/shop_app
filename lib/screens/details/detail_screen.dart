import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_aap/model/product.dart';
import 'package:shop_aap/screens/details/components/body_detail.dart';

import '../../constants.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: product.color,
      body: BodyDetail(product: product),
    );
  }

  PreferredSizeWidget buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icons/back.svg',color: Colors.white,),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg',color: Colors.white,),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/cart.svg',color: Colors.white,),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
