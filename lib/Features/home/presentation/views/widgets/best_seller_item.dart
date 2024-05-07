import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

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
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Harry Potter and the Goblet of Fire',
                maxLines: 2,
                style: Styles.titleLarge,
              ),
              Text(
                "J.K Rowling",
                style: Styles.smallStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "19.99",
                        style: Styles.numberStyle,
                      ),
                      SizedBox(
                        width: ConstantsSize.s6,
                      ),
                      Icon(
                        Icons.euro_rounded,
                        color: ConstantsColor.whiteColor,
                        size: ConstantsSize.s18,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: ConstantsColor.yellowColor,
                        size: ConstantsSize.s18,
                      ),
                      SizedBox(
                        width: ConstantsSize.s6,
                      ),
                      Text(
                        "4.8",
                        style: Styles.rateStyle,
                      ),
                      SizedBox(
                        width: ConstantsSize.s6,
                      ),
                      Text(
                        "(2390)",
                        style: Styles.smallStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
