import 'package:flutter/cupertino.dart';

import '../../../../../Core/utils/styles.dart';
import '../../../../../constants.dart';
import 'book_action.dart';
import 'booking_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_item_image.dart';

class BooksDetailsSimilarSection extends StatelessWidget {
  const BooksDetailsSimilarSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width *0.2),
          child: const CustomBookItemImage(
            imageUrl: 'https://cdn.kobo.com/book-images/63781af4-7e15-441c-a86b-c2293a1e50e9/1200/1200/False/english-books-to-learn-high-school-heist.jpg',
          ),
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
      ],
    );
  }
}
