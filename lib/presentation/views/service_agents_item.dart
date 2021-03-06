import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/presentation/widgets/x_margin.dart';
import 'package:cleancul/presentation/widgets/y_margin.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceAgentItem extends StatelessWidget {

  final SizeConfig _config = SizeConfig();

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/cleaning_service.png',
            width: _config.sw(30),
            height: _config.sh(30),
            fit: BoxFit.cover,
          ),
          XMargin(20),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              SubtitleText(text: 'Mediclean Services'),
              SizedBox(
                width: SizeConfig.screenWidthDp - 150,
                child: NormalText(text: 'We are committed to giving nothing short of a high cleaning standard. This makes us the best cleaning agent on the south coast',
                  maxLines: 2,
                )
              ),
              YMargin(10),
              Row(
                children: [
                  NormalText(text: '4.7/5', textColor: theme.primaryColor,),
                  XMargin(10),

                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
