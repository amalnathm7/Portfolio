import 'package:portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          MyApp.startAbout = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: MyApp.startAbout ? 0 : 1,
      child: Stack(
        children: [
          Center(
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colours.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 700),
            opacity: MyApp.startAbout ? 0 : 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "ABO",
                      style: GoogleFonts.kanit(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colours.text,
                      ),
                    ),
                    Text(
                      "UT",
                      style: GoogleFonts.kanit(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "M",
                      style: GoogleFonts.kanit(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colours.text,
                      ),
                    ),
                    Text(
                      "E.",
                      style: GoogleFonts.kanit(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startAbout
                      ? EdgeInsets.only(
                          top: size.height * 0.02,
                          bottom: size.height * 0.02,
                        )
                      : EdgeInsets.only(
                          left: size.width * 0.03,
                          right: size.width * 0.03,
                          top: size.height * 0.02,
                          bottom: size.height * 0.02,
                        ),
                  child: Text(
                    "So, who am I?",
                    style: GoogleFonts.kanit(
                      fontSize: size.width * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Colours.text,
                    ),
                  ),
                ),
                AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startAbout
                      ? EdgeInsets.zero
                      : EdgeInsets.only(
                          left: size.width * 0.03,
                        ),
                  child: Lottie.network(
                    "https://assets3.lottiefiles.com/private_files/lf30_GjhcdO.json",
                    height: size.width * 0.075,
                  ),
                ),
                AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startAbout
                      ? EdgeInsets.only(
                          top: size.height * 0.02,
                          bottom: size.height * 0.02,
                        )
                      : EdgeInsets.only(
                          left: size.width * 0.03,
                          right: size.width * 0.03,
                          top: size.height * 0.02,
                          bottom: size.height * 0.02,
                        ),
                  child: Text(
                    "Well, that's a philosophical question\nif you ask me.\nNah, just kidding.",
                    style: GoogleFonts.caveat(
                      fontSize: size.width * 0.015,
                      fontWeight: FontWeight.bold,
                      color: Colours.text,
                    ),
                  ),
                ),
                AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startAbout
                      ? EdgeInsets.only(
                          top: size.height * 0.02,
                          bottom: size.height * 0.01,
                        )
                      : EdgeInsets.only(
                          left: size.width * 0.03,
                          right: size.width * 0.03,
                          top: size.height * 0.02,
                          bottom: size.height * 0.01,
                        ),
                  child: Text(
                    "I am a B.Tech undergraduate at TKM College\n"
                    "of Engineering with passion towards learning\n"
                    "the fundamentals and applications of Computer\n"
                    "Science and Engineering.\n",
                    style: GoogleFonts.caveat(
                      fontSize: size.width * 0.015,
                      color: Colours.text1,
                    ),
                  ),
                ),
                Expanded(
                  child: AnimatedPadding(
                    duration: const Duration(milliseconds: 700),
                    padding: MyApp.startAbout
                        ? EdgeInsets.only(
                            top: size.height * 0.02,
                            bottom: size.height * 0.02,
                          )
                        : EdgeInsets.only(
                            left: size.width * 0.03,
                            right: size.width * 0.03,
                            top: size.height * 0.01,
                            bottom: size.height * 0.05,
                          ),
                    child: Container(
                      height: size.height * 0.4,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(size.width / 50)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(size.width / 50),
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 1500),
                          opacity: MyApp.startAbout ? 0 : 1,
                          child: Image.asset(
                            "assets/pic2.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 700),
              padding: MyApp.startAbout
                  ? EdgeInsets.only(
                      top: size.height * 0.02,
                      bottom: size.height * 0.02,
                    )
                  : EdgeInsets.only(
                      left: size.width * 0.03,
                      right: size.width * 0.03,
                      top: size.height * 0.02,
                      bottom: size.height * 0.02,
                    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      height: size.height * 0.4,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(size.width / 50)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(size.width / 50),
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 1500),
                          opacity: MyApp.startAbout ? 0 : 1,
                          child: Image.asset(
                            "assets/pic1.png",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    "Anything else?",
                    style: GoogleFonts.kanit(
                      fontSize: size.width * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Colours.text,
                    ),
                  ),
                  AnimatedPadding(
                    duration: const Duration(milliseconds: 700),
                    padding: MyApp.startAbout
                        ? EdgeInsets.zero
                        : EdgeInsets.only(
                            left: size.width * 0.03,
                          ),
                    child: Lottie.network(
                      "https://assets3.lottiefiles.com/packages/lf20_qqu8eybe.json",
                      height: size.width * 0.08,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.width * 0.02,
                      bottom: size.width * 0.05,
                    ),
                    child: Text(
                      "I can also refer to myself as a software developer\n"
                      "with experience in building cross platform\n"
                      "applications from ground up and deploying them\n"
                      "in the respective platforms.",
                      textAlign: TextAlign.end,
                      style: GoogleFonts.caveat(
                        fontSize: size.width * 0.015,
                        color: Colours.text1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
