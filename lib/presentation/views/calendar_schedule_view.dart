import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarScheduleItem extends StatelessWidget {

  final SizeConfig _config = SizeConfig();
  final String whereToClean;
  final String timeToClean;
  final String stateOfCleaning;
  final SvgPicture iconWhereToClean;
  final String cleaingAgent;

  CalendarScheduleItem({
    this.whereToClean,
    this.timeToClean,
    this.stateOfCleaning,
    this.iconWhereToClean,
    this.cleaingAgent});

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.only(left: 21, right: 21, top: 5, bottom: 10),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment:  MainAxisAlignment.end,
            children: [

              if(stateOfCleaning == "Done") ... [

                MkImageAssets.doneIcon,
                XMargin(10),
                NormalText(text: "Done", fontSize: 12, textColor: Colors.black26,),

              ] else ... [

                MkImageAssets.pendingIcon,
                XMargin(10),
                NormalText(text: "pending", fontSize: 12, textColor: Colors.black26,),

              ],
          ],),
          NormalText(text: whereToClean, fontSize: 18,),
          NormalText(text: timeToClean, fontSize: 12, textColor: Colors.black54,),
          YMargin(10),
          Row(
            mainAxisAlignment:  MainAxisAlignment.start,
            children: [

              if(cleaingAgent != "") ... [

                Expanded(
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/cleaning_service.png',
                        width: _config.sw(30),
                        height: _config.sh(30),
                        fit: BoxFit.cover,
                      ),
                      NormalText(text: cleaingAgent, textColor: theme.primaryColor, fontSize: 14,),
                    ],
                  ),
                ),

              ] else ... [

                Expanded(child: XMargin(10)),

              ],

              XMargin(10),

              Container(
                height: 50,
                  width: 50,
                  child: iconWhereToClean),
            ],
          )
        ],
      ),
    );
  }
}
