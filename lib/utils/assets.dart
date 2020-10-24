import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

mixin MkImageAssets {

  static SvgPicture cleanculIcon = SvgPicture.asset(
    'assets/images/cleancul.svg', height: 150, width: 150, fit: BoxFit.fill,
  );

  static SvgPicture greenCleanCulIcon = SvgPicture.asset(
    'assets/images/green_cleancul.svg', height: 20, width: 20, fit: BoxFit.contain,
  );

  static SvgPicture onBoardingCalendar = SvgPicture.asset(
    'assets/images/onboarding_calendar.svg', height: 70, width: 70, fit: BoxFit.contain,
  );

  static SvgPicture onBoardingLocation = SvgPicture.asset(
    'assets/images/onboarding_location.svg', height: 70, width: 70, fit: BoxFit.contain,
  );

  static SvgPicture onBoardingRecycling = SvgPicture.asset(
    'assets/images/onboarding_recycling_best_practices.svg', height: 70, width: 70, fit: BoxFit.contain,
  );

  static SvgPicture googleIcon = SvgPicture.asset(
    'assets/images/google_icon.svg', height: 20, width: 20, fit: BoxFit.fill,
  );

  static SvgPicture facebookIcon = SvgPicture.asset(
    'assets/images/facebook_icon.svg', height:20, width: 20, fit: BoxFit.fill,
  );

  static SvgPicture permissionImage = SvgPicture.asset(
    'assets/images/permissions.svg', height: 200, width: 200, fit: BoxFit.fill,
  );

  static SvgPicture bottom_left = SvgPicture.asset(
    'assets/images/left_bottom_art.svg', height: 100, width: 100, fit: BoxFit.fill,
  );

  static SvgPicture top_right = SvgPicture.asset(
    'assets/images/top_right_art.svg', height: 100, width: 100, fit: BoxFit.contain,
  );

  static SvgPicture bottomBarCalendar = SvgPicture.asset(
    'assets/images/bottom_bar_calendar.svg', height:20, width: 20, fit: BoxFit.contain,
  );
  static SvgPicture bottomBarHome = SvgPicture.asset(
    'assets/images/bottom_bar_home.svg', height: 20, width: 20, fit: BoxFit.contain,
  );
  static SvgPicture bottomBarLocation = SvgPicture.asset(
    'assets/images/bottom_bar_location.svg', height: 20, width: 20, fit: BoxFit.contain,
  );
  static SvgPicture bottomBarProfile = SvgPicture.asset(
    'assets/images/bottom_bar_profile.svg', height: 20, width: 20, fit: BoxFit.contain,
  );
}
