import 'package:flutter/material.dart';
import 'package:shop_aap/model/product.dart';

class DescriptionScreen extends StatelessWidget {
   DescriptionScreen({super.key,required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 20),
        child: Text(product.description,style: TextStyle(height: 1.5),),
      ),
    );
  }
}
