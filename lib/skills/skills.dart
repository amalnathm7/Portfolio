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
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          MyApp.startSkill = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: MyApp.startSkill ? 0 : 1,
      child: Stack(
        children: [
          AnimatedPadding(
            duration: const Duration(milliseconds: 700),
            padding: MyApp.startSkill
                ? EdgeInsets.zero
                : EdgeInsets.only(
                    left: size.width * 0.15,
                    right: size.width * 0.15,
                    top: size.height * 0.01,
                    bottom: size.height * 0.01,
                  ),
            child: Container(
              color: Colours.primary,
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 700),
            opacity: MyApp.startSkill ? 0 : 1,
            child: Column(
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
                        color: Colours.text,
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
                        color: Colours.text,
                      ),
                    ),
                    Text(
                      "IL",
                      style: GoogleFonts.kanit(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "LS.",
                      style: GoogleFonts.kanit(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colours.text,
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
          ),
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 700),
              padding: MyApp.startSkill
                  ? EdgeInsets.zero
                  : EdgeInsets.only(
                      left: size.width * 0.2,
                      right: size.width * 0.2,
                      top: size.width * 0.03,
                      bottom: size.width * 0.03,
                    ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.width * 0.1,
                    width: size.width * 0.08,
                    padding: EdgeInsets.all(size.width * 0.01),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(size.width * 0.01),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Flutter",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.012,
                            fontWeight: FontWeight.bold,
                            color: Colours.text,
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
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(size.width * 0.01),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Firebase",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.012,
                            fontWeight: FontWeight.bold,
                            color: Colours.text,
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
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 700),
              padding: MyApp.startSkill
                  ? EdgeInsets.zero
                  : EdgeInsets.only(
                      left: size.width * 0.2,
                      right: size.width * 0.2,
                      top: size.width * 0.03,
                      bottom: size.width * 0.03,
                    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: size.width * 0.1,
                    width: size.width * 0.08,
                    padding: EdgeInsets.all(size.width * 0.01),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(size.width * 0.01),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Android Native",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.012,
                            fontWeight: FontWeight.bold,
                            color: Colours.text,
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
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(size.width * 0.01),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "SQL",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.012,
                            fontWeight: FontWeight.bold,
                            color: Colours.text,
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
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 700),
              padding: MyApp.startSkill
                  ? EdgeInsets.zero
                  : EdgeInsets.only(
                      left: size.width * 0.2,
                      right: size.width * 0.2,
                      top: size.width * 0.03,
                      bottom: size.width * 0.03,
                    ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.width * 0.1,
                    width: size.width * 0.08,
                    padding: EdgeInsets.all(size.width * 0.01),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(size.width * 0.01),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "C",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.012,
                            fontWeight: FontWeight.bold,
                            color: Colours.text,
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
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(size.width * 0.01),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Java",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.012,
                            fontWeight: FontWeight.bold,
                            color: Colours.text,
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
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 700),
              padding: MyApp.startSkill
                  ? EdgeInsets.zero
                  : EdgeInsets.only(
                      left: size.width * 0.2,
                      right: size.width * 0.2,
                      top: size.width * 0.03,
                      bottom: size.width * 0.03,
                    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: size.width * 0.1,
                    width: size.width * 0.08,
                    padding: EdgeInsets.all(size.width * 0.01),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(size.width * 0.01),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Python",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.012,
                            fontWeight: FontWeight.bold,
                            color: Colours.text,
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
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(size.width * 0.01),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "GitHub",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.kanit(
                            fontSize: size.width * 0.012,
                            fontWeight: FontWeight.bold,
                            color: Colours.text,
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
      ),
    );
  }
}
