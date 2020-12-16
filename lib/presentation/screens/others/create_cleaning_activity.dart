import 'package:cleancul/presentation/screens/home/main_screen.dart';
import 'package:cleancul/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:cleancul/presentation/widgets/button.dart';
import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:cleancul/utils/navigator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class CreateCleaningActivity extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<CreateCleaningActivity> {

  static BoxDecoration solidCont(BuildContext context) => BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(25.0));

  static BoxDecoration outlinedCont = BoxDecoration(
      borderRadius: BorderRadius.circular(21),
      border: Border.all(color: Colors.black.withOpacity(0.08)));

  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);
    final myController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black, size: 30,),
            onPressed: () {
              popView(context);
            }
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: SizeConfig.screenWidthDp,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                    width: SizeConfig.screenWidthDp - 150,
                    child: TitleText(text: 'Create new cleaning task', maxLines: 2,)
                ),

                YMargin(20.0),

                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Cleaning task name',
                      hintStyle: TextStyle(fontSize: 22)
                  ),
                ),

                YMargin(30),

                Row(children: [

                  Container(
                    height: 40,
                      width: 40,
                      child: MkImageAssets.set_date_icon),

                  XMargin(20),

                  NormalText(text: 'Set your date', fontSize: 14,)

                ],),

                YMargin(20),

                Row(children: [

                  Container(
                      height: 40,
                      width: 40,
                      child: MkImageAssets.set_time_icon),

                  XMargin(20),

                  NormalText(text: 'Set your time', fontSize: 14,)

                ],),

                YMargin(45.0),

                NormalText(text: 'Select places', fontSize: 14,),

                YMargin(5.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Column(children:[
                    Container(
                        height: 60,
                        width: 60,
                        child: MkImageAssets.clean_kitchen_icon),
                    NormalText(text: 'Kitchen', fontSize: 11, textColor: Colors.black45),
                  ]),

                  XMargin(7),

                  Column(children:[
                    Container(
                        height: 60,
                        width: 60,
                        child: MkImageAssets.clean_office_icon),
                    NormalText(text: 'Office', fontSize: 11, textColor: Colors.black45,),
                  ]),

                    XMargin(7),

                  Column(children:[
                    Container(
                        height: 60,
                        width: 60,
                        child: MkImageAssets.clean_room_icon),
                    NormalText(text: 'Rooms', fontSize: 11, textColor: Colors.black45),
                  ]),

                    XMargin(7),

                  Column(children:[
                    Container(
                        height: 60,
                        width: 60,
                        child: MkImageAssets.clean_rest_room_icon),
                    NormalText(text: 'Toilet', fontSize: 11, textColor: Colors.black45),
                  ]),

                    XMargin(7),

                  Column(children:[
                    Container(
                        height: 60,
                        width: 60,
                        child: MkImageAssets.clean_compound_icon),
                    NormalText(text: 'Compound', fontSize: 11, textColor: Colors.black45),
                  ]),
                ],),

                YMargin(35.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      decoration: outlinedCont,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NormalText(text: 'Self-service', fontSize: 14, textColor: Colors.black45),
                        )),

                    XMargin(40),

                    Container(
                      decoration: solidCont(context),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: NormalText(text: 'Agent', fontSize: 14, textColor: Colors.white),
                        )),

                ],),

                YMargin(30.0),

                Container(
                  decoration: outlinedCont,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(children: [
                      Container(
                        height: 50,
                          width: 50,
                          child: MkImageAssets.set_reminder_icon),
                      XMargin(30),
                      NormalText(text: 'Remind me', fontSize: 14,),
                    ],),
                  ),
                ),

                YMargin(20.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    XButton(
                        onClick: () {
                          navigateReplace(context, MainScreen());
                        },
                        text: 'Create Task'
                    ),
                  ],
                ),

                YMargin(20.0),

              ],
            ),
          ),
        ),
      ),
    );
  }
}