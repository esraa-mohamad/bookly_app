import 'package:bookly/Core/widgets/custom_button.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: ConstantsSize.s8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              textButton: '19.99 €',
              textColor: ConstantsColor.blackColor,
              backgroundColor: ConstantsColor.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(ConstantsSize.s16),
                bottomLeft: Radius.circular(ConstantsSize.s16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              textButton: 'Free Preview',
              fontSize: ConstantsSize.s16,
              textColor: ConstantsColor.whiteColor,
              backgroundColor: ConstantsColor.background,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(ConstantsSize.s16),
                bottomRight: Radius.circular(ConstantsSize.s16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
