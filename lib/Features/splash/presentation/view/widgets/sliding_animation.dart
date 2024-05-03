import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({super.key , required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context , _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Enjoy the life of Books',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: ConstantsStrings.textFamily,
                  fontSize: ConstantsSize.s18,
                  fontWeight: FontWeight.bold
              ),
            ),
          );
        }
    );
  }
}
