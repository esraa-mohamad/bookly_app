import 'package:bookly/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_list_view_section.dart';

import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../data/models/book_model.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: ConstantsSize.s30),
            child: Column(
              children: [
                BooksDetailsSimilarSection(bookModel: bookModel,),
                const Expanded(
                  child: SizedBox(
                    height: ConstantsSize.s50,
                  ),
                ),
                const BooksDetailsListViewSection(),
                const SizedBox(
                  height: ConstantsSize.s40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
