import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_categories_book.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
         const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: ConstantsSize.s30),
                child: CustomAppBar(),
              ),


            ],
          ),
        ),
        const SliverToBoxAdapter(
          child:  FeaturedBookListView(),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(
                height: ConstantsSize.s20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: ConstantsSize.s30),
                child: Text(
                  'Categories Books',
                  style: Styles.textStyle18.copyWith(
                      fontSize: ConstantsSize.s20
                  ),
                ),
              ),
              const SizedBox(
                height: ConstantsSize.s20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: ConstantsSize.s30),
                child: CustomCategoriesBook(),
              ),
              const SizedBox(
                height: ConstantsSize.s20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: ConstantsSize.s30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}

