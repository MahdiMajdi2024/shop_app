import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_aap/model/product.dart';

class ButtonBuy extends StatelessWidget {
  ButtonBuy({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 60,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: product.color),
            ),
            child: SvgPicture.asset(
              'assets/icons/add_to_cart.svg',
              color: product.color,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(60, 50),
                  backgroundColor: product.color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(width: 0, color: product.color),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'BUY NOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
