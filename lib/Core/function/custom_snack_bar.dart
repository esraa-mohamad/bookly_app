import 'package:flutter/material.dart';

import '../utils/styles.dart';

void customSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
            text,
            style: Styles.textStyle16.copyWith(
                color: Colors.red
            ),
          )
      )
  );
}