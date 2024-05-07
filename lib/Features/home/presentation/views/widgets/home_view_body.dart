import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: ConstantsSize.s24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBookListView(),
          SizedBox(
            height: ConstantsSize.s30,
          ),
          Text(
              'Best Seller',
              style: Styles.titleMedium,
          ),
          SizedBox(
            height: ConstantsSize.s8,
          ),
          BestSellerItem(),
        ],
      ),
    );
  }
}

