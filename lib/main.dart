import 'dart:io';

import 'package:dcc/screens/camera_screen.dart';
import 'package:dcc/screens/home_screen.dart';
import 'package:dcc/screens/occasion_screen.dart';
import 'package:dcc/screens/photo_screen.dart';
import 'package:dcc/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:touch_indicator/touch_indicator.dart';

import 'screens/result_screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => TouchIndicator(
        indicatorColor: Colors.blue,
        child: child!,
        forceInReleaseMode: true,
      ),
      title: 'Dress Code Checker',
      initialRoute: HomeScreen.routeId,
      routes: {
        HomeScreen.routeId: (context) => HomeScreen(),
        OccasionScreen.routeId: (context) => OccasionScreen(),
        CameraScreen.routeId: (context) => CameraScreen(),
        //PhotoScreen.routeId: (context) => PhotoScreen(), //? Wegen Parameter auskommentiert
        ResultScreen.routeId: (context) => ResultScreen(),
        ResultScreen2.routeId: (context) => ResultScreen2(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 5,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
