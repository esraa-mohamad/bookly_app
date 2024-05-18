import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly/Features/search/presentation/view/widgets/search_result_List_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: ConstantsSize.s30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: ConstantsSize.s16,
          ),
          Text(
            'SearchResult',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: ConstantsSize.s16,
          ),
          Expanded(
              child: SearchResultListView()
          ),
        ],
      ),
    );
  }
}
