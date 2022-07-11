import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial_app/screens/login.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //Upper part
            Expanded(
                flex: 6,
                child: Center(child: Image.asset('assets/IMAGETILES.png'))),

            //Bottom Part
            Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.all(32),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, -3),
                          blurRadius: 5,
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(28),
                          topRight: Radius.circular(28))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Read the article you\nwant instantly',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 24)),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'You can read thousands of articles on Blog Club, save them in the application and share them with your loved ones.',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 2,
                                color: Color(0xff2D4379))),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffDEE7FF),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffDEE7FF),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffDEE7FF),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 10,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(26),
                                  shape: BoxShape.rectangle,
                                  color: const Color(0xff376AED),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()),
                              );
                            },
                            child: Container(
                                height: 60,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  shape: BoxShape.rectangle,
                                  color: const Color(0xff376AED),
                                ),
                                child: const Center(
                                    child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ))),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
