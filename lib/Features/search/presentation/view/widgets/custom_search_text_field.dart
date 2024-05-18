import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
            onPressed: (){},
            icon:  const Opacity(
              opacity: 0.8,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: ConstantsSize.s24,
                color: ConstantsColor.whiteColor,
              ),
            ),
        ),

        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),

      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(ConstantsSize.s16),
        borderSide: const BorderSide(
          color: ConstantsColor.whiteColor
        ),
      );
  }
}
