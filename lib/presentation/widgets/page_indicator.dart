import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:cleancul/utils/size_config.dart';

class PageIndicator extends StatefulWidget {

  final int length;
  final ValueNotifier<int> pageIndexNotifier;

  PageIndicator(this.length, this.pageIndexNotifier);

  @override
  _PageIndicatorState createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  @override
  Widget build(BuildContext context) {
    return PageViewIndicator(
      indicatorPadding: EdgeInsets.all(0),
      pageIndexNotifier: widget.pageIndexNotifier,
      length: widget.length,
      normalBuilder: (animationController, index) => Container(
        width: 5.0,
        height: 5.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2.5)
        ),
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Container(
          width: SizeConfig().sw(15.0),
          height: SizeConfig().sh(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2.5)
          ),
        ),
      ),
    );
  }
}
