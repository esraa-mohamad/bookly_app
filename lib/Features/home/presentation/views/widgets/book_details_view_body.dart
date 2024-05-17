import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/booking_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_item.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: ConstantsSize.s30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width *0.2),
            child: const CustomBookItemImage(),
          ),
          const SizedBox(
            height: ConstantsSize.s43,
          ),
           Text(
              'The Jungle Book' ,
            style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(
            height: ConstantsSize.s6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling' ,
              style: Styles.textStyle16.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,

              ),
            ),
          ),
          const SizedBox(
            height: ConstantsSize.s18,
          ),
          const BookingRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: ConstantsSize.s37,
          ),
          const BookActions(),
          const SizedBox(
            height: ConstantsSize.s50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like' ,
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: ConstantsSize.s16,
          ),
          const SimilarBooksListView(),
          const SizedBox(
            height: ConstantsSize.s40,
          ),
        ],
      ),
    );
  }
}
