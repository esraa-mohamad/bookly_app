import 'package:bookly/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
        itemBuilder: (context , index){
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: ConstantsSize.s10),
            child: BestSellerItem(),
          );
        }
    );
  }
}
