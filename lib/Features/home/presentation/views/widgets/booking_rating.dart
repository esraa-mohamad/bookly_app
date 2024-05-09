import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class BookingRating extends StatelessWidget {
  const BookingRating({super.key , this.mainAxisAlignment =MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
    mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star_rounded ,
          size: ConstantsSize.s16,
          color: ConstantsColor.yellowColor,
        ),
        const SizedBox(
          width: ConstantsSize.s3_6,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16.copyWith(
            fontFamily: ConstantsStrings.numberFamily
          ),
        ),
        const SizedBox(
          width: ConstantsSize.s5,
        ),
        const Text(
          '(2390)',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
