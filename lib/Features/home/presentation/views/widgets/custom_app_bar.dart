
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utils/assets.dart';
import '../../../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: ConstantsSize.s24,
          vertical: ConstantsSize.s40
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logoPath,
            width: ConstantsSize.s75,
            height: ConstantsSize.s24,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: ConstantsSize.s24,
              color: ConstantsColor.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}