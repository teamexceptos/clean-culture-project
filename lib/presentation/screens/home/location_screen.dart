import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: SizeConfig.screenWidthDp,
        height: SizeConfig.screenHeightDp,
        child: Center(
          child: NormalText(text: 'Location'),
        ),
      ),
    );
  }
}
