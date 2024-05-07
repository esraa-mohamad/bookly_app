import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';

abstract class Styles {

  static const titleMedium = TextStyle(
    fontSize: ConstantsSize.s22,
    fontWeight: FontWeight.w600,
    fontFamily: ConstantsStrings.titleFamily,
  );

  static const titleLarge = TextStyle(
    fontFamily: ConstantsStrings.titleFamily,
    fontWeight: FontWeight.bold,
    fontSize: ConstantsSize.s28
  );

  static const rateStyle = TextStyle(
    fontSize: ConstantsSize.s22,
    fontWeight: FontWeight.w500 ,
    fontFamily: ConstantsStrings.numberFamily
  );

  static const numberStyle = TextStyle(
      fontSize: ConstantsSize.s25,
      fontWeight: FontWeight.w700 ,
      fontFamily: ConstantsStrings.numberFamily
  );


  static const smallStyle = TextStyle(
      fontSize: ConstantsSize.s18,
      fontWeight: FontWeight.w300 ,
      fontFamily: ConstantsStrings.titleFamily,
      color: ConstantsColor.grayColor
  );


  // styles from course


}