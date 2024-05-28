import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context , index){
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: ConstantsSize.s10),
            //child: BookListViewItem(),
            child: Text('Change later'),
          );
        }
    );
  }
}
