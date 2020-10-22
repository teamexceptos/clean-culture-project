import 'package:cleancul/presentation/widgets/button.dart';
import 'package:cleancul/presentation/widgets/page_indicator.dart';
import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  List<String> pageDescriptions = [
    'Personalized Cleaning Schedule', 'Location services', 'Best Management Practices'
  ];

  List<String> pageTitles = [
    'Personalize your cleaning calender by creating cleaning routines suitable with your schedule',
    'Get cleaning services, resources and agents near by',
    'Don’t miss out on the best recycling methods available to your region'
  ];

  final pageIndexNotifier = ValueNotifier<int>(0);
  final pageController = PageController();
  var pagePosition = 0;

  @override
  Widget build(BuildContext context) {

    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 10),
        height: SizeConfig.screenHeightDp,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      MkImageAssets.greenCleanCulIcon,
                      XMargin(20),
                      TitleText(text: 'Clean Culture', fontSize: 12, textColor: themeData.primaryColor,)
                    ],
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: NormalText(text: 'Skip'),
                    ),
                  )

                ],
              ),
            ),
            YMargin(20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: SizeConfig().sh(300),
                width: SizeConfig.screenWidthDp,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  onPageChanged: (position){
                    pageIndexNotifier.value = position;
                    setState(() {
                      pagePosition=position;
                    });

                  },
                  pageSnapping: true,
                  children: <Widget>[
                    MkImageAssets.onBoardingCalendar,
                    MkImageAssets.onBoardingLocation,
                    MkImageAssets.onBoardingRecycling,
                  ],
                ),
              ),
            ),
            YMargin(10),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: SizeConfig.screenWidthDp,
                decoration: BoxDecoration(
                  color: themeData.primaryColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
                ),
                child: Column(
                  children: [
                    YMargin(40),
                    TitleText(text: pageTitles[pagePosition]),
                    YMargin(10),
                    NormalText(text: pageDescriptions[pagePosition], maxLines: 5,),
                    YMargin(30),
                    XButton(onClick: (){
                        if(pagePosition != 2){
                          pageController.animateToPage(pagePosition + 1, duration: Duration(microseconds: 10), curve: ElasticInCurve(0.8));
                        }else{

                        }
                      },
                      text: pagePosition == 2 ? "Finish" : "Next"
                    ),
                    YMargin(20),
                    pagePosition == 2 ? Container(): PageIndicator(3, pageIndexNotifier),
                    YMargin(20),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
