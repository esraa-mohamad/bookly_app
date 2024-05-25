import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({required this.errorMessage , super.key});

  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return  Text(
      errorMessage ,
      style: Styles.textStyle18,
    );
  }
}
