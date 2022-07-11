// ignore_for_file: avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoarding()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/background.svg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Center(child: SvgPicture.asset('assets/logo.svg')),
          // const SizedBox(height: 50),
          // Positioned(
          //   bottom: 100,
          //   right: 190,
          //   child: Center(
          //     child: InkWell(
          //       onTap: () {
          //         //Go to a new screen/page
          //         // Navigator.push(
          //         //   context,
          //         //   MaterialPageRoute(builder: (context) => const OnBoarding()),
          //         // );
          //       },
          //       child: Container(
          //         padding: const EdgeInsets.all(20),
          //         decoration: BoxDecoration(
          //             color: Colors.blue,
          //             borderRadius: BorderRadius.circular(10)),
          //         child: const Icon(Icons.arrow_forward),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
