import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordHidden = false;

  void _togglePasswordView() {
    setState(() {
      isPasswordHidden = !isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Center(
                child: SvgPicture.asset(
              'assets/logo.svg',
              height: 60,
            )),
            const Spacer(),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  height: height * 0.75,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xff376AED),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(28),
                          topRight: Radius.circular(28))),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'LOGIN',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                        Text(
                          'SIGN UP',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white.withOpacity(0.3))),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: height * 0.67,
                      width: double.infinity,
                      padding: const EdgeInsets.all(30),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(28),
                              topRight: Radius.circular(28))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome back',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                              color: Color(0xff0D253C),
                            )),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Sign in with your account',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff0D253C),
                            )),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Username',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff2D4379),
                            )),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: 'username'),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Password',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff2D4379),
                            )),
                          ),
                          TextFormField(
                            obscureText: isPasswordHidden,
                            decoration: InputDecoration(
                              hintText: '**********',
                              suffix: InkWell(
                                onTap: _togglePasswordView,
                                child: Text(
                                  isPasswordHidden ? 'Show' : 'Hide',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff376AED),
                                  )),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: const Color(0xff376AED),
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                'LOGIN',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.white)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
