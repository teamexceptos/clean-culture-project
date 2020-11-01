import 'package:cleancul/presentation/screens/others/create_cleaning_activity.dart';
import 'package:cleancul/presentation/views/calendar_schedule_view.dart';
import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/assets.dart';
import 'package:cleancul/utils/navigator.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart' show DateFormat;

class CalendarScreen extends StatefulWidget {
  CalendarScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CalendarScreenState createState() => new _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {

  DateTime _currentDate = DateTime(2020, 10, 3);
  DateTime _currentDate2 = DateTime(2020, 10, 3);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2020, 10, 3));
  DateTime _targetDateTime = DateTime(2020, 10, 3);

  final whereToClean = <String>[
    "Kitchen",
    "Bed room",
    "Rest room" ];

  final timeToClean = <String>[
    "5 am - 6 am",
    "7 am - 7:30 am",
    "8 am - 9 am"];

  final cleaningState = <String>[
    "Done",
    "Done",
    "Pending"];

  final whereToCleanIcons = <SvgPicture>[
    MkImageAssets.clean_kitchen_icon,
    MkImageAssets.clean_room_icon,
    MkImageAssets.clean_rest_room_icon];

  final cleaningService = <String>[
    "",
    "",
    "Mediclean Service"];

  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.access_time_rounded,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2020, 10, 10): [
        new Event(
          date: new DateTime(2020, 10, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2020, 10, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2020, 10, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  CalendarCarousel _calendarCarouselNoHeader;

  @override
  void initState() {
    /// Add more events to _markedDateMap EventList
    _markedDateMap.add(
        new DateTime(2020, 9, 25),
        new Event(
          date: new DateTime(2020, 9, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        new DateTime(2020, 10, 10),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(new DateTime(2020, 10, 11), [
      new Event(
        date: new DateTime(2019, 10, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2020, 10, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2020, 10, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.green,
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
        print(date.day.toString());
      },
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
      markedDatesMap: _markedDateMap,
      height: 400.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder: CircleBorder(
          side: BorderSide(color: Colors.yellow.withOpacity(0.6))
      ),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.blue.withOpacity(0.3),
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: Colors.white,
      ),
      markedDateShowIcon: true,
      markedDateIconMaxShown: 2,
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      todayButtonColor: Colors.brown.withOpacity(0.6),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.pinkAccent,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return new Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          navigate(context, CreateCleaningActivity());
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 45,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              YMargin(15),

              //custom icon without header
              Container(
                margin: EdgeInsets.only(
                  top: 30.0,
                  bottom: 16.0,
                  left: 26.0,
                  right: 26.0,
                ),
                child: new Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          _currentMonth,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 31.0,
                          ),
                        )
                    ),
                    Container(
                      height: SizeConfig().sh(35),
                      width: 120,
                      decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(25.0)),
                      child: Center(
                        child: Text(
                            "View progress",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.white
                            ),
                          ),
                      ),
                    ),

                // FlatButton(
                    //   child: Text('PREV'),
                    //   onPressed: () {
                    //     setState(() {
                    //       _targetDateTime = DateTime(_targetDateTime.year, _targetDateTime.month -1);
                    //       _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                    //     });
                    //   },
                    // ),
                    // FlatButton(
                    //   child: Text('NEXT'),
                    //   onPressed: () {
                    //     setState(() {
                    //       _targetDateTime = DateTime(_targetDateTime.year, _targetDateTime.month +1);
                    //       _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                    //     });
                    //   },
                    // )

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: _calendarCarouselNoHeader,
              ), //


              Column(children: [

                Row(
                  children: [
                    XMargin(15),
                    NormalText(text: 'Today', fontSize: 15,),
                  ],
                ),

                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    physics: new NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int position){
                      return CalendarScheduleItem(
                        timeToClean: timeToClean[position],
                        stateOfCleaning: cleaningState[position],
                        whereToClean: whereToClean[position],
                        iconWhereToClean: whereToCleanIcons[position],
                        cleaingAgent: cleaningService[position],
                      );
                    }
                ),

              ],),
            ],
          ),
        )
    );
  }
}