import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lucky_pet_shop_ecommerce/app_styles.dart';
import 'package:lucky_pet_shop_ecommerce/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Row(
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
            const SizedBox(height: 19),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: kOrange,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: SizeConfig.blockSizeHorizontal! * 40,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/welcom_message.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: SizeConfig.blockSizeHorizontal! * 47,
                    bottom: 0,
                    top: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Olá',
                              style: kSourceSansProLigth.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                                color: kBlack,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              'Jéssica',
                              style: kSourceSansProMedium.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                                color: kBlack,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '👋',
                              style: kSourceSansProMedium.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                                color: kBlack,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Pronta para uma experiência incrível🐕🐈',
                          style: kSourceSansProRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                            color: kBlack,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
