import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class BookingRating extends StatelessWidget {
  const BookingRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.rate = 4,
    this.count = 2390,
  });

  final MainAxisAlignment mainAxisAlignment;

  final int rate;

  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star_rounded,
          size: ConstantsSize.s16,
          color: ConstantsColor.yellowColor,
        ),
        const SizedBox(
          width: ConstantsSize.s3_6,
        ),
        Text(
          '$rate',
          style: Styles.textStyle16
              .copyWith(fontFamily: ConstantsStrings.numberFamily),
        ),
        const SizedBox(
          width: ConstantsSize.s5,
        ),
         Text(
          '($count)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
