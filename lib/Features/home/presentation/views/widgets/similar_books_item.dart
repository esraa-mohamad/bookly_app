import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'custom_book_item_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.15,
      child: ListView.builder(
          scrollDirection:  Axis.horizontal,
          itemBuilder: (context , index){
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: ConstantsSize.s5),
              child: CustomBookItemImage(),
            );
          }
      ),
    );
  }
}
