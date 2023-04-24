import 'package:flutter/material.dart';
import 'package:ski_resorts_app/onboardingmenu.dart';
import 'package:flutter/services.dart';
import 'package:ski_resorts_app/screens/navigation_drawer_menu.dart';
// flutter read my files from top to bottom and executes what it finds
// we don't have to worry about pixel disposition, flutter does it for us

//edit
void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkModeEnabled = false;
  static const isLoggedIn = true;

  void _updateTheme(bool isDarkModeEnabled) {
    setState(() {
      _isDarkModeEnabled = isDarkModeEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SkiResorts',
      theme: _isDarkModeEnabled
          ? ThemeData.dark()
          : ThemeData(
              fontFamily: 'NotoSansKR',
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: Colors.white,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
      // ignore: dead_code
      home: isLoggedIn
          ? const Scaffold(
              // core widget -> is the one that is displayed on the screen
              body: NavigationDrawerMenu(),
            )
          : OnboardingMenu(),
    );
  }
}
