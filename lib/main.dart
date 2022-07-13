import 'package:flutter/material.dart';
import 'package:tutorial_app/screens/splashScreen.dart';

void main() {
  runApp(const TutorialApp());
}

class TutorialApp extends StatelessWidget {
  const TutorialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
