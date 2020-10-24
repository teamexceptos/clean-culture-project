import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';

class PopularArticlesView extends StatefulWidget {

  final String articleTitle;
  final String articleDuration;
  final String articleNoOfComments;

  PopularArticlesView({@required this.articleTitle, @required this.articleDuration,
    @required this.articleNoOfComments});

  @override
  _PopularArticlesViewState createState() => _PopularArticlesViewState();
}

class _PopularArticlesViewState extends State<PopularArticlesView> {
  @override
  Widget build(BuildContext context) {

    final SizeConfig _config = SizeConfig();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Image.asset(
              'assets/images/cleaning_practices.png',
              height: _config.sh(100),
              width: _config.sw(100),
            ),
          ),
          XMargin(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(text: widget.articleTitle, fontSize: 17,),
              YMargin(10),
              Row(
                children: [
                  Icon(Icons.access_time_rounded, color: Colors.grey, size: 12,),
                  XMargin(5),
                  NormalText(text: widget.articleDuration, fontSize: 12, textColor: Colors.grey,),
                  XMargin(20),
                  Icon(Icons.question_answer, color: Colors.grey, size: 12,),
                  XMargin(5),
                  NormalText(text: widget.articleNoOfComments, fontSize: 12, textColor: Colors.grey,),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
