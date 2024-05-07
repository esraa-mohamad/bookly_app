import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/booking_rating.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
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
                color: Colors.red,
                  borderRadius: BorderRadius.circular(ConstantsSize.s8),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage),
                  )
              ),
            ),
          ),
        ),
        const SizedBox(
          width: ConstantsSize.s30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              ),
              const SizedBox(
                height: ConstantsSize.s3,
              ),
              const Text(
                "J.K Rowling",
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: ConstantsSize.s3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "19.99 €",
                    style: Styles.textStyle20.copyWith(
                      fontFamily: ConstantsStrings.numberFamily,
                    ),
                  ),
                  const BookingRating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
