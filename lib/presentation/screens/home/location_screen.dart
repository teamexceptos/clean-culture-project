import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:cleancul/utils/decorator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 10,
            right: 10,
            child: Column(
              children: [
                Container(
                  width: SizeConfig.screenWidthDp,
                  decoration: boxDecorators.containerDecorationShadow,
                  padding: EdgeInsets.all(16),
                  child: Column(children: [

                    YMargin(15),

                    Container(
                      height: 60,
                        width: 150,
                        child: MkImageAssets.locationBuildingIcon),

                    YMargin(5),

                    NormalText(text: '15 smart bins around you', fontSize: 15, textColor: Theme.of(context).primaryColor,),

                  ],),
                ),

                YMargin(15),

                Container(
                  padding: EdgeInsets.all(18),
                  decoration: boxDecorators.containerDecorationShadow,
                  child: Row(children: [
                    NormalText(text: 'Search any location', fontSize: 13, textColor: Colors.black45),
                  ],),
                ),

              ],
            ),
          ),

          Positioned(
            bottom: 0,
            child: Container(
              width: SizeConfig.screenWidthDp,
              decoration: boxDecorators.decorationShadowWithTopRadius,
              padding: EdgeInsets.all(18),
              child: Row(
                children: [
                  Container(
                    height: 70,
                      width: 60,
                      child: MkImageAssets.smartBinIcon),
                  XMargin(25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YMargin(15),
                      NormalText(text: 'No. 12, Wallgreen Street', fontSize: 15, textColor: Theme.of(context).primaryColor,),
                      YMargin(5),
                      NormalText(text: '3 km aways from use', fontSize: 13, textColor: Colors.black54,),
                      YMargin(5),
                      NormalText(text: 'Used 43 mins ago', fontSize: 13, textColor: Colors.black54,),
                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
