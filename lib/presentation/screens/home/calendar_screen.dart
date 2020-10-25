import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: SizeConfig.screenWidthDp,
        height: SizeConfig.screenHeightDp,
        child: Center(
          child: NormalText(text: 'Calendar'),
        ),
      ),
    );
  }
}
