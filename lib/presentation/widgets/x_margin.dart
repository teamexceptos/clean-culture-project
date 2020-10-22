import 'package:flutter/material.dart';
import 'package:cleancul/utils/size_config.dart';

class XMargin extends StatelessWidget {

  final double width;

  XMargin(this.width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig().sw(width),
    );
  }
}
