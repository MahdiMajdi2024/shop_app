import 'package:flutter/material.dart';
import 'package:shop_aap/model/product.dart';
import 'package:shop_aap/screens/details/components/button_buy.dart';
import 'package:shop_aap/screens/details/components/description.dart';
import 'package:shop_aap/screens/details/detail_screen.dart';

import 'Product_title_with_image_item.dart';
import 'color_and_size.dart';
import 'container_with_fav_btn.dart';

class BodyDetail extends StatelessWidget {
  BodyDetail({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height*0.3),
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                    top: size.height*0.12
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                     ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product,),
                      SizedBox(height: 10,),
                      DescriptionScreen(product: product),
                      SizedBox(height: 10,),
                      ContainerWithFavBtn(product: product,),
                      ButtonBuy(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImageItem(product: product,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
