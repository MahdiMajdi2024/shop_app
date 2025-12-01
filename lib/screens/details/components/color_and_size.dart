import 'package:flutter/material.dart';
import 'package:shop_aap/model/product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Color'),
              Row(
                children: [
                  ColorDot( color: Color(0xFF3D82AE),IsSelected: true,),
                  ColorDot( color: Color(0xFFFB7883)),
                  ColorDot(color: Color(0xFFD3A984) ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Size'),
              Text(
                '${product.size} cm',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  ColorDot({this.IsSelected = false ,required this.color});
  final bool IsSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(right: 10,top: 5),
      padding: EdgeInsets.all(2.5),
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: IsSelected ? color : Colors.transparent

        )
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
