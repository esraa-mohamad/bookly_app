import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../managers/newest_books_cubit/newest_books_cubit.dart';

class CustomCategoriesBook extends StatefulWidget {
  const CustomCategoriesBook({super.key});

  @override
  State<CustomCategoriesBook> createState() => _CustomCategoriesBookState();
}

class _CustomCategoriesBookState extends State<CustomCategoriesBook> {
  List<String> categories = [
    'Programming',
    'Computer Science',
    'Imagination',
    'Sport',
    'Horror',
    'Family',
  ];

  @override
  void initState() {
    super.initState();
    context.read<NewestBooksCubit>().fetchNewestBook(categories[0]);}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        //itemCount: categories.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: (){
              context.read<NewestBooksCubit>().fetchNewestBook(categories[index]);
            },
            child: Container(
                    padding: const EdgeInsets.all(ConstantsSize.s10),
                    decoration: BoxDecoration(
                        color: ConstantsColor.whiteColor,
                        borderRadius: BorderRadius.circular(ConstantsSize.s50),),
                    child: Text(
                      categories[index],
                      style: Styles.textStyle20.copyWith(
                        color: ConstantsColor.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
