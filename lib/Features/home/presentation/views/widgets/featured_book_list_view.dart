import 'package:bookly/Core/widgets/custom_error.dart';
import 'package:bookly/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly/Features/home/presentation/managers/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item_image.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.bookModel.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: ConstantsSize.s8),
                    child: CustomBookItemImage(
                      imageUrl: state
                          .bookModel[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const Center(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
