import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin boxDecorators {

  static BoxDecoration containerDecorationShadow = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(26.0)),
    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20, spreadRadius: 7)],
  );

  static BoxDecoration decorationShadowWithTopRadius = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(topRight: Radius.circular(26.0), topLeft: Radius.circular(26.0)),
    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 20, spreadRadius: 7)],
  );

  static BoxDecoration fillAlphaGreyDecoration = BoxDecoration(
    color: Colors.grey.withOpacity(0.08),
    borderRadius: BorderRadius.circular(13),
  );

  static BoxDecoration fillAlphaBlackDecoration = BoxDecoration(
    color: Colors.black.withOpacity(0.08),
    borderRadius: BorderRadius.circular(21),
  );

  static BoxDecoration fillDecoration(Color color) => BoxDecoration(
    color: color.withOpacity(0.2),
    borderRadius: BorderRadius.circular(13),
  );

  static BoxDecoration fillDecorationShadow(Color color) => BoxDecoration(
    color: color.withOpacity(0.2),
    borderRadius: BorderRadius.all(Radius.circular(18.0)),
    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 18, spreadRadius: 7)],
  );

  static BoxDecoration whiteContainerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(13),
  );


}