import 'package:bookly/Core/function/launch_url.dart';
import 'package:bookly/Core/widgets/custom_button.dart';
import 'package:bookly/Features/home/data/models/book_model.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookActions extends StatelessWidget {
   const BookActions({super.key, required this.bookModel});

  final BookModel bookModel ;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: ConstantsSize.s8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              textButton: 'Free',
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
              onPressed: () async{
                launchCustomUrl(context, bookModel.volumeInfo.previewLink!);
              },
              textButton: getText(bookModel),
              fontSize: ConstantsSize.s16,
              textColor: ConstantsColor.whiteColor,
              backgroundColor: ConstantsColor.background,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(ConstantsSize.s16),
                bottomRight: Radius.circular(ConstantsSize.s16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink != null){
      return 'Preview';
    }else {
      return 'Not Available';
    }
  }
}
