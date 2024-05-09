import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomBookItemImage extends StatelessWidget {
  const CustomBookItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration:  BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(ConstantsSize.s18),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          )
        ),
      ),
    );
  }
}
