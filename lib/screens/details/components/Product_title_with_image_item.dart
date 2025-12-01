import 'package:flutter/material.dart';
import 'package:shop_aap/model/product.dart';

import 'button_buy.dart';

class ProductTitleWithImageItem extends StatelessWidget {
  ProductTitleWithImageItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Aristocratic Hand bag',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Text(
            'Old Fashion',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 33,
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'price',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Hero(
                  tag: '${product.id}',
                  child: Image.asset(product.image, fit: BoxFit.fill),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
