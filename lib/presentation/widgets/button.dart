import 'package:cleancul/presentation/widgets/texts.dart';
import 'package:cleancul/utils/size_config.dart';
import 'package:flutter/material.dart';


class XButton extends StatelessWidget {

  final double height;
  final double width;
  final Function onClick;
  final String text;
  final double radius;
  final Color buttonColor;
  final Color textColor;
  final bool isLoading;
  final Color progressColor;
  final double textSize;

  XButton({
    @required this.onClick,
    @required this.text,
    this.height,
    this.width,
    this.radius,
    this.buttonColor,
    this.textColor,
    this.isLoading,
    this.progressColor,
    this.textSize,
  });

  final SizeConfig config = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick();
      },
      child: Container(
        height: height != null ? config.sh(height) : config.sh(60),
        width: width != null ? config.sw(width) : config.sw(250),
        decoration: BoxDecoration(
          color: buttonColor ?? Theme.of(context).accentColor,
          borderRadius: radius != null ? BorderRadius.circular(radius) : BorderRadius.circular(25.0)
        ),
        child: Center(
          child:
          isLoading == null ?
          TitleText(
            text: text,
            textColor: textColor ?? Colors.white,
            fontSize: textSize == null ? config.sp(15): config.sp(textSize),
          ): !isLoading ?
          TitleText(
            text: text,
            textColor: textColor ?? Colors.white,
            fontSize: textSize == null ? config.sp(15): config.sp(textSize),
          ): isLoading ?
          SizedBox(
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              valueColor: progressColor != null ? AlwaysStoppedAnimation<Color>(progressColor): AlwaysStoppedAnimation<Color>(Colors.white),),
            height: config.sh(20),
            width: config.sh(20),
          ) :
          TitleText(
            text: text,
            textColor: textColor ?? Colors.white,
            fontSize: textSize == null ? config.sp(15): config.sp(textSize),
          )
        ),
      ),
    );
  }
}
