import 'package:bookly/Features/home/presentation/views/widgets/similar_books_item.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../Core/utils/styles.dart';
import '../../../../../constants.dart';

class BooksDetailsListViewSection extends StatelessWidget {
  const BooksDetailsListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like' ,
          style: Styles.textStyle14.copyWith(
            color: ConstantsColor.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: ConstantsSize.s16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
