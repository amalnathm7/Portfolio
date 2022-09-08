import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/main.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Lottie.network(
                      "https://assets10.lottiefiles.com/packages/lf20_wbhpdrhp.json",
                      height: size.width * 0.15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "CONT",
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colours.primary,
                          ),
                        ),
                        Text(
                          "ACT",
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
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
                            color: Colours.primary,
                          ),
                        ),
                        Text(
                          "E.",
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: size.width * 0.05,
                color: Colours.primary,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.all(size.width * 0.02),
            child: Text(
              "Made with Flutter ✨",
              style: TextStyle(
                fontSize: size.width * 0.008,
                color: Colors.grey[800],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
