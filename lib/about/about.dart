import 'package:portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final String _mailUrl =
      "mailto:amalnathm7@gmail.com?subject=Hey Amal, I have something exciting for you!";
  final String _whatsAppUrl = "https://wa.me/917907587380";
  final String _telegramUrl = "https://t.me/amalnathm7";

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
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
        Column(
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
                    color: Colors.grey[800],
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
                    color: Colors.grey[800],
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
        Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
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
                    color: Colors.grey[800],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  top: size.height * 0.02,
                  bottom: size.height * 0.02,
                ),
                child: Text(
                  "Well, that's a philosophical question\nif you ask me. Nah, just kidding.",
                  style: GoogleFonts.caveat(
                    fontSize: size.width * 0.015,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  top: size.height * 0.02,
                  bottom: size.height * 0.02,
                ),
                child: Text(
                  "I am a B.Tech undergraduate at TKM College\n"
                  "of Engineering with passion towards learning\n"
                  "the fundamentals and applications of Computer\n"
                  "Science and Engineering.\n",
                  style: GoogleFonts.caveat(
                    fontSize: size.width * 0.015,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.03,
                    right: size.width * 0.03,
                    top: size.height * 0.02,
                    bottom: size.height * 0.02,
                  ),
                  child: Container(
                    height: size.height * 0.4,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(size.width / 50)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(size.width / 50),
                      child: Image.asset(
                        "assets/pic2.jpeg",
                        fit: BoxFit.cover,
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
          child: Padding(
            padding: EdgeInsets.only(
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
                      child: Image.asset(
                        "assets/pic1.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Anything else?",
                  style: GoogleFonts.kanit(
                    fontSize: size.width * 0.025,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: Text(
                    "I can also refer to myself as a software developer\n"
                    "with experience in building cross platform\n"
                    "applications from ground up and deploying them\n"
                    "in the respective platforms.",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.caveat(
                      fontSize: size.width * 0.015,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  child: Text(
                    "Impressed already? Let's connect.",
                    textAlign: TextAlign.end,
                    style: GoogleFonts.caveat(
                      fontSize: size.width * 0.012,
                      color: Colors.black,
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 2,
                  child: Lottie.network(
                    "https://assets7.lottiefiles.com/private_files/lf30_xzwwylsk.json",
                    height: size.width * 0.05,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      alignment: Alignment.centerRight,
                      splashRadius: size.width * 0.01,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onPressed: () {
                        _launchUrl(_mailUrl);
                      },
                      icon: Icon(
                        Icons.mail,
                        size: size.width * 0.012,
                        color: Colors.grey[800],
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.centerRight,
                      splashRadius: size.width * 0.01,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onPressed: () {
                        _launchUrl(_whatsAppUrl);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.whatsapp,
                        size: size.width * 0.012,
                        color: Colors.grey[800],
                      ),
                    ),
                    IconButton(
                      alignment: Alignment.centerRight,
                      splashRadius: size.width * 0.01,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onPressed: () {
                        _launchUrl(_telegramUrl);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.telegram,
                        size: size.width * 0.012,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Lottie.network(
                    "https://assets3.lottiefiles.com/packages/lf20_uzoyW6.json",
                    height: size.width * 0.05),
              ],
            ),
          ),
        )
      ],
    );
  }
}
