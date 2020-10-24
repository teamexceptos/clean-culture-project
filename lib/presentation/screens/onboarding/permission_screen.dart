import 'package:cleancul/presentation/screens/home/main_screen.dart';
import 'package:cleancul/presentation/widgets/button.dart';
import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:cleancul/utils/navigator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PermissionScreen extends StatefulWidget {
  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
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
                MkImageAssets.permissionImage,
                YMargin(10),
                TitleText(
                  text: 'Allow Clean Culture to access your location, calendar and storage?',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  fontSize: 15,
                  textColor: themeData.primaryColor,
                ),
                YMargin(30),
                XButton(
                  onClick: (){
                    navigate(context, MainScreen());
                  },
                  text: 'Allow All Access'
                ),
                YMargin(30)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
