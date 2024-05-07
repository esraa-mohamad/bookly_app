import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class BookingRating extends StatelessWidget {
  const BookingRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(
          Icons.star ,
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
