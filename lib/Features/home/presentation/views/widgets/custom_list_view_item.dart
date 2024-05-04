import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration:  BoxDecoration(
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
