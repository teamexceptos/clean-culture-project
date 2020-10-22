import 'dart:async';

import 'package:cleancul/presentation/screens/auth/welcome_screen.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:cleancul/utils/navigator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () async {
      navigateReplace(context, WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: themeData.primaryColor,
      body: Container(
        height: SizeConfig.screenHeightDp,
        width: SizeConfig.screenWidthDp,
        child: Center(
          child: MkImageAssets.cleanculIcon,
        ),
      ),
    );
  }
}
