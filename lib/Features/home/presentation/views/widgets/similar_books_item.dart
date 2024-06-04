import 'package:bookly/Features/home/presentation/managers/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/widgets/custom_error.dart';
import '../../../../../Core/widgets/custom_loading_indicator.dart';
import '../../../../../constants.dart';
import 'custom_book_item_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: ConstantsSize.s5),
                    child: CustomBookItemImage(
                      imageUrl:
                          'https://cdn.kobo.com/book-images/63781af4-7e15-441c-a86b-c2293a1e50e9/1200/1200/False/english-books-to-learn-high-school-heist.jpg',
                    ),
                  );
                }),
          );
        }
        else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
