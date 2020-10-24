import 'package:cleancul/presentation/views/service_agents_item.dart';
import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/navigator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class AvailableServiceAgentsScreen extends StatefulWidget {
  @override
  _AvailableServiceAgentsScreenState createState() => _AvailableServiceAgentsScreenState();
}

class _AvailableServiceAgentsScreenState extends State<AvailableServiceAgentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int position){
                  return ServiceAgentItem();
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
