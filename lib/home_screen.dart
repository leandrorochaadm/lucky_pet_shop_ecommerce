import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lucky_pet_shop_ecommerce/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/nav_icon.svg',
                width: 18,
              ),
              const CircleAvatar(
                radius: 20,
                backgroundColor: kRed,
                backgroundImage: NetworkImage(
                    'https://cdn3d.iconscout.com/3d/premium/thumb/boy-avatar-6299533-5187865.png'),
              )
            ],
          ),
        )
      ],
    ));
  }
}
