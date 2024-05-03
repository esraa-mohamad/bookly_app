import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/splash/presentation/view/widgets/sliding_animation.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{

  late AnimationController animationController ;
  late Animation<Offset> slideAnimation ;

  @override
  void initState() {

    super.initState();

    animationController = AnimationController(
        vsync: this ,
        duration: const Duration(
          seconds: 1,
        ),
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(0 , 10) ,
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
            AssetsData.logoPath,
        ),
        const SizedBox(
          height: ConstantsSize.s8,
        ),
       SlidingAnimation(
           slidingAnimation: slideAnimation
       )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
