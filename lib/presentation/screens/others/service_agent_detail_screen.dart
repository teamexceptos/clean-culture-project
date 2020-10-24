import 'package:cleancul/presentation/widgets/button.dart';
import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/navigator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class ServiceAgentDetails extends StatefulWidget {
  @override
  _ServiceAgentDetailsState createState() => _ServiceAgentDetailsState();
}

class _ServiceAgentDetailsState extends State<ServiceAgentDetails> {

  final SizeConfig _config = SizeConfig();

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Column(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
                onPressed: (){
                  popView(context);
                }
              ),
              YMargin(20),
              SizedBox(
                  width: SizeConfig.screenWidthDp - 70,
                  child: TitleText(text: 'Available Service Agent', maxLines: 2,)
              ),
              YMargin(15),
              SubtitleText(text: 'Mediclean Agency'),
              SizedBox(
                width: SizeConfig.screenWidthDp - 70,
                child: NormalText(text: 'We are committed to giving nothing short of a high cleaning standard. This makes us the best cleaning agent on the south coast', maxLines: 200,)
              ),
              YMargin(15),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: _config.sh(300),
                  width: SizeConfig.screenWidthDp,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/item_image_details.png',
                        height: _config.sh(300),
                        width: SizeConfig.screenWidthDp,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: _config.sh(300),
                        width: SizeConfig.screenWidthDp,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: SizeConfig.screenWidthDp - 70,
                              child: TitleText(text: 'Cleaning Service', maxLines: 2, textColor: Colors.white,)
                            ),
                            YMargin(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    NormalText(text: 'PER BILL', textColor: Colors.white, fontSize: 12,),
                                    TitleText(text: 'N3500', textColor: Colors.white, fontSize: 25,)
                                  ],
                                ),
                                Column(
                                  children: [
                                    NormalText(text: 'RATING', textColor: Colors.white, fontSize: 12,),
                                    TitleText(text: '4/5', textColor: Colors.white, fontSize: 25,)
                                  ],
                                ),
                                Column(
                                  children: [
                                    NormalText(text: 'TIME', textColor: Colors.white, fontSize: 12,),
                                    TitleText(text: '2H', textColor: Colors.white, fontSize: 25,)
                                  ],
                                ),
                              ],
                            ),
                            YMargin(10),
                            NormalText(text: 'REVIEWS', textColor: Colors.white, fontSize: 12,),
                            Wrap(
                              children: [
                                CircleAvatar(
                                  backgroundColor: theme.primaryColor,
                                  radius: 30,
                                  child: Center(
                                    child: Icon(Icons.person_pin, color: Colors.white,),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: theme.primaryColor,
                                  radius: 30,
                                  child: Center(
                                    child: Icon(Icons.person_pin, color: Colors.white,),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: theme.primaryColor,
                                  radius: 30,
                                  child: Center(
                                    child: Icon(Icons.person_pin, color: Colors.white,),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                XButton(
                                  height: 40,
                                  textSize: 12,
                                  width: 150,
                                  radius: 14,
                                  onClick: (){

                                  },
                                  text: 'More'
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              YMargin(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  XButton(
                    width: SizeConfig.screenWidthDp - 100,
                    onClick: (){

                    },
                    text: 'Request Service'
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
