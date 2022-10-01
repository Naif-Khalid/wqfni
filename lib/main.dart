import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:wqfni_v9/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen.withScreenFunction(
          splash: 'assets/ic_launcher.png',
          splashIconSize: 75,
          screenFunction: () async {
            return const Wqfni();
          },),
    );
  }
}
