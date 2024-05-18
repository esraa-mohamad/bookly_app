
import 'package:bookly/Core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/utils/assets.dart';
import '../../../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: ConstantsSize.s40,
          top: ConstantsSize.s20,
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
            onPressed: () {
              GoRouter.of(context).push(AppRouter.searchViewRout);
            },
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