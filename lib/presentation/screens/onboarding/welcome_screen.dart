import 'package:cleancul/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:cleancul/presentation/widgets/button.dart';
import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:cleancul/utils/navigator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: themeData.primaryColor,
      body: Container(
        height: SizeConfig.screenHeightDp,
        width: SizeConfig.screenWidthDp,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MkImageAssets.cleanculIcon,
                YMargin(30),
                TitleText(text: 'Clean Culture', textColor: Colors.white,),
                YMargin(20),
                NormalText(
                  text: "Your spaces deserve just the very best.\nGet that desired look from anywhere in the world with just a single click",
                  textColor: Colors.white,
                  maxLines: 4,
                  textAlign: TextAlign.center
                ),
                YMargin(50),
                XButton(
                  onClick: (){
                    navigateReplace(context, OnBoardingScreen());
                  },
                  text: 'Get Started'
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
