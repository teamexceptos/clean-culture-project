import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: SizeConfig.screenWidthDp,
        height: SizeConfig.screenHeightDp,
        child: Center(
          child: NormalText(text: 'Profile'),
        ),
      ),
    );
  }
}
