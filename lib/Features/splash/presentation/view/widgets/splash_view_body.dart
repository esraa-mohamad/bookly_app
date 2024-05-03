import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
            AssetsData.logoPath,
        ),
        const SizedBox(
          height: ConstantsSize.s8,
        ),
        const Text(
            'Enjoy the like of Books',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: ConstantsStrings.textFamily,
            fontSize: ConstantsSize.s18,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
