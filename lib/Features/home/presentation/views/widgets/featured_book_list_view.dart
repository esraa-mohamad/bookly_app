import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item_image.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      child: ListView.builder(
          scrollDirection:  Axis.horizontal,
          itemBuilder: (context , index){
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: ConstantsSize.s8),
              child: CustomBookItemImage(),
            );
          }
      ),
    );
  }
}
