import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/background.svg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Center(child: SvgPicture.asset('assets/logo.svg')),
        ],
      ),
    );
  }
}
