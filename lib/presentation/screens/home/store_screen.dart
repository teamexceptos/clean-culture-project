import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:cleancul/utils/decorator.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [

            YMargin(40),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: boxDecorators.containerDecorationShadow,
                child: Row(children: [
                  NormalText(text: 'Find cleaning resources', fontSize: 13, textColor: Colors.black45),
                ],),
              ),
            ),

            YMargin(15),

            Row(
              children: [
                TitleText(text: 'Categories', maxLines: 2,),
              ],
            ),

            YMargin(20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NormalText(text: 'All', fontSize: 13, textColor: Colors.black),
                NormalText(text: 'Equipments', fontSize: 13, textColor: Colors.black54),
                NormalText(text: 'Disinfectants', fontSize: 13, textColor: Colors.black54),
                NormalText(text: 'Apparels', fontSize: 13, textColor: Colors.black54),

              ],
            ),

            YMargin(15),

            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 1.3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                Image.asset(
                  'assets/images/item_image_1.png',
                  width: SizeConfig().sw(150),
                  height: SizeConfig().sh(150),
                ),
                Image.asset(
                  'assets/images/item_image_2.png',
                  width: SizeConfig().sw(150),
                  height: SizeConfig().sh(150),
                ),
                Image.asset(
                  'assets/images/item_image_3.png',
                  width: SizeConfig().sw(150),
                  height: SizeConfig().sh(150),
                ),
                Image.asset(
                  'assets/images/item_image_4.png',
                  width: SizeConfig().sw(150),
                  height: SizeConfig().sh(150),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
