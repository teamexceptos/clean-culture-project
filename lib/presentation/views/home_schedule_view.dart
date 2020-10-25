import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/decorator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CleaningScheduleListView extends StatelessWidget {

  final String day;
  final String time;
  final Color color;
  final Function onScheduleClick;

  CleaningScheduleListView({
    this.day,
    this.time,
    this.color,
    this.onScheduleClick
  });

  @override
  Widget build(BuildContext context) {
    final SizeConfig config = SizeConfig();

    return InkWell(
      onTap: onScheduleClick,
      child: Container(
          width: config.sw(200),
          height: config.sh(100),
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              children: [
                Row(children: [
                  Icon(Icons.today, color: Colors.orange,),
                  XMargin(10),
                  NormalText(text: day, textColor: Colors.white,),
                ],),

                YMargin(10),

                Row(children: [
                  Icon(Icons.access_time_rounded, color: Colors.orange,),
                  XMargin(10),
                  NormalText(text: time, textColor: Colors.white,),
                ],),
              ]
            ),
          )
      ),
    );
  }
}