import 'package:flutter/material.dart';
import 'package:cleancul/utils/size_config.dart';

class XTextField extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final Function(String) validator;
  final TextInputAction textInputAction;
  final bool obscureText;
  final Color fillColor;
  final TextInputType keyboardType;
  final Color normalBorderColor;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final Color hintTextColor;
  final Color normalTextColor;
  final bool autoFocus;
  final bool isEnabled;

  XTextField({
    @required this.controller,
    @required this.hintText,
    @required this.validator,
    this.textInputAction,
    this.obscureText,
    this.fillColor,
    this.keyboardType,
    this.normalBorderColor,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.hintTextColor,
    this.normalTextColor,
    this.autoFocus,
    this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {

    final sizeConfig = SizeConfig();

    return TextFormField(
      autofocus: autoFocus ?? false,
      enabled: isEnabled ?? true,
      style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: sizeConfig.sp(15,), color: normalTextColor ?? Colors.black),
      obscureText: obscureText ?? false,
      controller: controller,
      textInputAction: textInputAction ?? TextInputAction.done,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: sizeConfig.sp(15), color: hintTextColor ?? Colors.grey),
        errorStyle: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.red, fontSize: sizeConfig.sp(15)),
        filled: true,
        fillColor: fillColor != null ? fillColor : Colors.transparent,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: normalBorderColor ?? Colors.white)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: enabledBorderColor ?? Colors.grey.withOpacity(0.2))
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: focusedBorderColor ?? Theme.of(context).accentColor)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.red)
        ),
      ),
    );
  }
}
