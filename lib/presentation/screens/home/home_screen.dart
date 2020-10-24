import 'package:cleancul/presentation/screens/others/available_service_agents_screen.dart';
import 'package:cleancul/presentation/views/home_schedule_view.dart';
import 'package:cleancul/presentation/views/popular_articles_view.dart';
import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/navigator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final SizeConfig _config = SizeConfig();

  final colorList = <Color>[Colors.blue, Colors.green, Colors.red, Colors.black54, Colors.amber, Colors.indigo];

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NormalText(text: 'Welcome Back,'),
                        TitleText(text: 'Christabel')
                      ],
                    ),
                    Container(
                      height: _config.sh(40),
                      width: _config.sw(40),
                      decoration: BoxDecoration(
                        color: theme.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Icon(Icons.person_pin, color: Colors.white, size: 25,),
                      ),
                    )
                  ],
                ),
              ),
              YMargin(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TitleText(text: 'Cleaning Schedule'),
              ),
              YMargin(15),
              Container(
                height: _config.sh(100),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int position){
                    return CleaningScheduleListView(
                      color: colorList[position],
                      day: 'Tuesday',
                      onScheduleClick: (){

                      },
                      time: '5PM - 6PM',
                    );
                  }
                ),
              ),
              YMargin(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/cleaning_agents.png',
                          width: _config.sw(150),
                          height: _config.sh(150),
                        ),
                        YMargin(5),
                        NormalText(text: 'Cleaning Agents', fontSize: 12,)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/cleaning_resources.png',
                          width: _config.sw(150),
                          height: _config.sh(150),
                        ),
                        YMargin(5),
                        NormalText(text: 'Cleaning Resources', fontSize: 12,)
                      ],
                    ),
                  ],
                ),
              ),
              YMargin(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(text: 'Popular', fontSize: 20,),
                    NormalText(text: 'Show All', textColor: theme.accentColor,)
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int position){
                  return GestureDetector(
                    onTap: (){
                      navigate(context, AvailableServiceAgentsScreen());
                    },
                    child: PopularArticlesView(
                      articleTitle: 'Cleanliness is next to Godliness',
                      articleDuration: '30s ago',
                      articleNoOfComments: '50 comments'
                    ),
                  );
                }
              ),
              YMargin(10)
            ],
          )
        ),
      ),
    );
  }
}
