// this filedefines all the routes in the app; when i click on a button, i want to go to a specific page.
// The route of the page is defined here; so in every file i can call the route of the page i want to go to
import 'package:flutter/material.dart';
import 'package:ski_resorts_app/home_app_screen.dart';
import 'package:ski_resorts_app/settings_page_screen/settings_page_screen.dart';
import 'package:ski_resorts_app/statistic_screen/statistic_screen_navigator_pages/today_statistic_page.dart';
import 'package:ski_resorts_app/statistic_screen/statistic_screen_navigator_pages/lifetime_statistic_page.dart';
import 'package:ski_resorts_app/statistic_screen/statistic_screen_navigator_pages/season_statistic_page.dart';
import 'package:ski_resorts_app/settings_page_screen/about_us_screen/about_us_screen.dart';
import 'package:ski_resorts_app/settings_page_screen/help_Feedback_Screen/help_feedback.dart';
import 'package:ski_resorts_app/settings_page_screen/notification_handler_screen/notification_handler_screem.dart';
import 'package:ski_resorts_app/settings_page_screen/position_handler_screen/position_handler_screen.dart';
import 'package:ski_resorts_app/settings_page_screen/profile_screen/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/home': (BuildContext context) => const HomeScreen(),
  '/TodayStatisticSection': (BuildContext context) => const TodayPage(),
  '/SeasonStatisticSection': (BuildContext context) => const SeasonPage(),
  '/LifetimeStatisticSection': (BuildContext context) => const LifetimePage(),
  '/NotificationSettingScreen': (BuildContext context) =>
      const NotificationSettingScreen(),
  '/AboutUsPage': (BuildContext context) => const AboutUsPage(),
  '/HelpAndFeedbackPage': (BuildContext context) => const HelpAndFeedbackPage(),
  '/LocationSettingScreen': (BuildContext context) =>
      const LocationSettingScreen(),
  '/ProfilePageScreen': (BuildContext context) => const ProfilePageScreen(),
  '/SettingsPage': (BuildContext context) => const SettingsPage(),
};
