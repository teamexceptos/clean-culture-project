import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/decorator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PracticesTipsView extends StatelessWidget {

  final String text;
  final String time;
  final Color views;
  final String image;
  final Function onPracticesTipsClick;

  PracticesTipsView({
    this.text,
    this.time,
    this.views,
    this.image,
    this.onPracticesTipsClick
  });

  @override
  Widget build(BuildContext context) {
    
    final SizeConfig config = SizeConfig();

    return Container(
      color: Colors.white,
        width: SizeConfig.screenWidthDp,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              children: [

                Image.asset(image, height: config.sh(60), width: config.sw(60),),

                XMargin(20),

                Column(children: [

                  NormalText(text: text),

                  YMargin(8),

                  Row(children: [

                    Row(children: [
                      Icon(Icons.access_time_rounded, color: Colors.orange,),
                      YMargin(3),
                      NormalText(text: "2 days ago"),
                    ],),
                    
                    XMargin(36),

                    Row(children: [
                      Icon(Icons.check_circle_outline_rounded, color: Colors.orange,),
                      YMargin(3),
                      NormalText(text: "23 views"),
                    ],),
                    
                  ],)
                ],),
              ]
          ),
        )
    );
  }
  
}