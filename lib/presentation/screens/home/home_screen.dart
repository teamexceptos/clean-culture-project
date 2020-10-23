import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: SizeConfig.screenWidthDp,
        height: SizeConfig.screenHeightDp,
        child: Center(
          child: NormalText(text: 'Home'),
        ),
      ),
    );
  }
}
