import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/main.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "MY",
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
                  "SK",
                  style: GoogleFonts.kanit(
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  "IL",
                  style: GoogleFonts.kanit(
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colours.primary,
                  ),
                ),
                Text(
                  "LS.",
                  style: GoogleFonts.kanit(
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            Lottie.network(
              "https://assets6.lottiefiles.com/packages/lf20_kkflmtur.json",
              height: size.width * 0.1,
            ),
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
              top: size.width * 0.02,
              bottom: size.width * 0.02,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.width * 0.1,
                  width: size.width * 0.08,
                  padding: EdgeInsets.all(size.width * 0.01),
                  decoration: BoxDecoration(
                    color: Colours.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(size.width * 0.01),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Flutter",
                        style: GoogleFonts.kanit(
                          fontSize: size.width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Flexible(
                        child: Lottie.network(
                          "https://assets9.lottiefiles.com/private_files/lf30_72kogvb9.json",
                          height: size.width * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.width * 0.1,
                  width: size.width * 0.08,
                  padding: EdgeInsets.all(size.width * 0.01),
                  decoration: BoxDecoration(
                    color: Colours.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(size.width * 0.01),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Firebase",
                        style: GoogleFonts.kanit(
                          fontSize: size.width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Flexible(
                        child: Lottie.network(
                          "https://assets2.lottiefiles.com/private_files/lf30_52jsgl4a.json",
                          height: size.width * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(size.width * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: size.width * 0.1,
                  width: size.width * 0.08,
                  padding: EdgeInsets.all(size.width * 0.01),
                  decoration: BoxDecoration(
                    color: Colours.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(size.width * 0.01),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Android Native",
                        style: GoogleFonts.kanit(
                          fontSize: size.width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Flexible(
                        child: Lottie.network(
                          "https://assets9.lottiefiles.com/packages/lf20_9F1pkg.json",
                          height: size.width * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.width * 0.1,
                  width: size.width * 0.08,
                  padding: EdgeInsets.all(size.width * 0.01),
                  decoration: BoxDecoration(
                    color: Colours.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(size.width * 0.01),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "SQL",
                        style: GoogleFonts.kanit(
                          fontSize: size.width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Flexible(
                        child: Lottie.network(
                          "https://assets4.lottiefiles.com/private_files/lf30_w11f2rwn.json",
                          height: size.width * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
              top: size.width * 0.02,
              bottom: size.width * 0.02,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: size.width * 0.1,
                  width: size.width * 0.08,
                  padding: EdgeInsets.all(size.width * 0.01),
                  decoration: BoxDecoration(
                    color: Colours.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(size.width * 0.01),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "C",
                        style: GoogleFonts.kanit(
                          fontSize: size.width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Flexible(
                        child: Lottie.network(
                          "https://assets4.lottiefiles.com/private_files/lf30_8wwkvgel.json",
                          height: size.width * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.width * 0.1,
                  width: size.width * 0.08,
                  padding: EdgeInsets.all(size.width * 0.01),
                  decoration: BoxDecoration(
                    color: Colours.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(size.width * 0.01),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Java",
                        style: GoogleFonts.kanit(
                          fontSize: size.width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Flexible(
                        child: Lottie.network(
                          "https://assets7.lottiefiles.com/packages/lf20_zh6xtlj9.json",
                          height: size.width * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.all(size.width * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: size.width * 0.1,
                  width: size.width * 0.08,
                  padding: EdgeInsets.all(size.width * 0.01),
                  decoration: BoxDecoration(
                    color: Colours.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(size.width * 0.01),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Python",
                        style: GoogleFonts.kanit(
                          fontSize: size.width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Flexible(
                        child: Lottie.network(
                          "https://assets8.lottiefiles.com/packages/lf20_2znxgjyt.json",
                          height: size.width * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.width * 0.1,
                  width: size.width * 0.08,
                  padding: EdgeInsets.all(size.width * 0.01),
                  decoration: BoxDecoration(
                    color: Colours.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(size.width * 0.01),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "GitHub",
                        style: GoogleFonts.kanit(
                          fontSize: size.width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Flexible(
                        child: Lottie.network(
                          "https://assets7.lottiefiles.com/packages/lf20_cwqf5i6h.json",
                          height: size.width * 0.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
