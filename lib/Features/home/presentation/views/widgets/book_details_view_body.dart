
import 'package:bookly/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_list_view_section.dart';

import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: ConstantsSize.s30),
            child: Column(
              children: [
                BooksDetailsSimilarSection(),
                Expanded(
                  child: SizedBox(
                    height: ConstantsSize.s50,
                  ),
                ),
               BooksDetailsListViewSection(),
                SizedBox(
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
