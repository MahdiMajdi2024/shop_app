import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_aap/constants.dart';
import 'package:shop_aap/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  PreferredSizeWidget buildAppBar() {
    return  AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: (){},
        icon: SvgPicture.asset('assets/icons/back.svg',
        ),
      ),
      actions: [
        IconButton(onPressed: (){},
          icon: SvgPicture.asset('assets/icons/search.svg',
            color: textColor,
          ),
        ),
        IconButton(onPressed: (){},
          icon: SvgPicture.asset('assets/icons/cart.svg',
            color: textColor,
          ),
        ),
        SizedBox(width: 10,)
      ],
    );
  }
}
