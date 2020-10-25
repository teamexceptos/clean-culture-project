import 'package:flutter/material.dart';
import 'package:cleancul/utils/size_config.dart';
class TitleText extends StatelessWidget {

  final String text;
  final double fontSize;
  final Color textColor;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final int maxLines;

  TitleText({@required this.text, this.fontSize, this.fontWeight, this.textColor, this.textAlign, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign != null ? textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.headline1
          .copyWith(
            fontSize: fontSize != null ? SizeConfig().sp(fontSize): SizeConfig().sp(25),
            color: textColor != null ? textColor: Colors.black,
            fontWeight: fontWeight != null ? fontWeight: FontWeight.w700
          ),
    );
  }
}

class SubtitleText extends StatelessWidget {

  final String text;
  final double fontSize;
  final Color textColor;
  final TextAlign textAlign;

  SubtitleText({@required this.text, this.fontSize, this.textColor, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: textAlign != null ? textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.headline2
          .copyWith(
          fontSize: fontSize != null ? SizeConfig().sp(fontSize): SizeConfig().sp(20),
          color: textColor != null ? textColor: Colors.black
      ),
    );
  }
}

class NormalText extends StatelessWidget {

  final String text;
  final double fontSize;
  final Color textColor;
  final TextAlign textAlign;
  final int maxLines;

  NormalText({@required this.text, this.fontSize, this.textColor, this.textAlign, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign != null ? textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyText1
          .copyWith(
          fontSize: fontSize != null ? SizeConfig().sp(fontSize): SizeConfig().sp(15),
          color: textColor != null ? textColor: Colors.black
      ),
    );
  }
}

class SubNormalText extends StatelessWidget {

  final String text;
  final double fontSize;
  final Color textColor;
  final TextAlign textAlign;

  SubNormalText({@required this.text, this.fontSize, this.textColor, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(text,

      textAlign: textAlign != null ? textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyText2
          .copyWith(
          fontSize: fontSize != null ? SizeConfig().sp(fontSize): SizeConfig().sp(15),
          color: textColor != null ? textColor: Colors.black
      ),
    );
  }
}

class AccentText extends StatelessWidget {

  final String text;
  final double fontSize;
  final Color textColor;
  final TextAlign textAlign;

  AccentText({@required this.text, this.fontSize, this.textColor, this.textAlign});

  @override
  Widget build(BuildContext context) {

    return Text(text,
      textAlign: textAlign != null ? textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyText1
          .copyWith(
          fontSize: fontSize != null ? SizeConfig().sp(fontSize): SizeConfig().sp(15),
          color: textColor != null ? textColor: Colors.black
      ),
    );
  }
}

