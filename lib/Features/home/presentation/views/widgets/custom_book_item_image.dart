import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomBookItemImage extends StatelessWidget {
  const CustomBookItemImage({super.key, required this.imageUrl});

  final String imageUrl ;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: Container(
        decoration:  BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(ConstantsSize.s18),
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          )
        ),
      ),
    );
  }
}
