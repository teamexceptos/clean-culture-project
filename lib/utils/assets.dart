import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

mixin MkImageAssets {

  static SvgPicture cleanculIcon = SvgPicture.asset(
    'assets/images/cleancul.svg', height: 150, width: 150, fit: BoxFit.fill,
  );

  static SvgPicture greenCleanCulIcon = SvgPicture.asset(
    'assets/images/green_cleancul.svg', height: 50, width: 50, fit: BoxFit.fill,
  );

  static SvgPicture onBoardingCalendar = SvgPicture.asset(
    'assets/images/onboarding_calendar.svg', height: 200, width: 200, fit: BoxFit.fill,
  );

  static SvgPicture onBoardingLocation = SvgPicture.asset(
    'assets/images/onboarding_location.svg', height: 200, width: 200, fit: BoxFit.fill,
  );

  static SvgPicture onBoardingRecycling = SvgPicture.asset(
    'assets/images/onboarding_recycling_best_practices.svg', height: 200, width: 200, fit: BoxFit.fill,
  );

  static SvgPicture googleIcon = SvgPicture.asset(
    'assets/images/google_icon.svg', height: 20, width: 20, fit: BoxFit.fill,
  );

  static SvgPicture facebookIcon = SvgPicture.asset(
    'assets/images/facebook_icon.svg', height: 20, width: 200, fit: BoxFit.fill,
  );

  static SvgPicture permissionImage = SvgPicture.asset(
    'assets/images/permissions.svg', height: 200, width: 200, fit: BoxFit.fill,
  );
}
