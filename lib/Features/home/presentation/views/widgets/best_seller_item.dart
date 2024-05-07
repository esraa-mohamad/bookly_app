import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: ConstantsSize.s125,
          child: AspectRatio(
            aspectRatio: 2.5/4,
            child: Container(
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(ConstantsSize.s8),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage),
                  )
              ),
            ),
          ),
        ),

      ],
    );
  }
}
