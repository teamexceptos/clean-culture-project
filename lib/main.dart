import 'package:cleancul/presentation/screens/onboarding/splash_screen.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Culture',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(121, 164, 92, 1),
        accentColor: Color.fromRGBO(252, 102, 129, 1),
        backgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: "Poppins_Extrabold",
            fontSize: 35,
            color: Colors.black,
          ),
          headline2: TextStyle(
            fontFamily: "Poppins_Bold",
            fontSize: 17,
            color: Colors.black,
          ),
          bodyText1: TextStyle(
            fontFamily: "Poppins_Medium",
            fontSize: 15,
            color: Colors.black,
          ),
          bodyText2: TextStyle(
            fontFamily: "Poppins",
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ),
      home: Builder(builder: (BuildContext context) {

        SizeConfig.init(context, width: 360, height: 640, allowFontScaling: true);

        return SplashScreen();

      }),
    );
  }
}
