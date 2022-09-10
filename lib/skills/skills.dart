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
  int _hoverIndex = -1;

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

    if (MyApp.isMobile) {
      size = Size(size.height, size.width);
    }

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: MyApp.startSkill ? 0 : 1,
      child: Stack(
        children: [
          AnimatedPadding(
            duration: const Duration(milliseconds: 700),
            padding: MyApp.isMobile
                ? EdgeInsets.only(
                    left: size.width * 0.1,
                    right: size.width * 0.1,
                    top: size.width * 0.4,
                    bottom: size.width * 0.4,
                  )
                : MyApp.startSkill
                    ? EdgeInsets.zero
                    : EdgeInsets.only(
                        left: size.width * 0.3,
                        right: size.width * 0.3,
                        top: size.width * 0.15,
                        bottom: size.width * 0.15,
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
              padding: MyApp.isMobile
                  ? EdgeInsets.only(
                      left: size.width * 0.02,
                      right: size.width * 0.02,
                      top: size.width * 0.03,
                      bottom: size.width * 0.03,
                    )
                  : MyApp.startSkill
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
                  Flexible(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = 0;
                          });
                        }
                      },
                      onExit: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = -1;
                          });
                        }
                      },
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.circular(size.width * 0.01),
                        ),
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 500),
                          padding: _hoverIndex == 0
                              ? EdgeInsets.all(size.width * 0.015)
                              : EdgeInsets.all(size.width * 0.01),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Flutter",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.kanit(
                                    fontSize: size.width * 0.012,
                                    fontWeight: FontWeight.bold,
                                    color: Colours.text,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Lottie.network(
                                  "https://assets9.lottiefiles.com/private_files/lf30_72kogvb9.json",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = 1;
                          });
                        }
                      },
                      onExit: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = -1;
                          });
                        }
                      },
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.circular(size.width * 0.01),
                        ),
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 500),
                          padding: _hoverIndex == 1
                              ? EdgeInsets.all(size.width * 0.015)
                              : EdgeInsets.all(size.width * 0.01),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Firebase",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.kanit(
                                    fontSize: size.width * 0.012,
                                    fontWeight: FontWeight.bold,
                                    color: Colours.text,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Lottie.network(
                                  "https://assets2.lottiefiles.com/private_files/lf30_52jsgl4a.json",
                                  height: size.width * 0.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
              padding: MyApp.isMobile
                  ? EdgeInsets.only(
                      left: size.width * 0.02,
                      right: size.width * 0.02,
                      top: size.width * 0.03,
                      bottom: size.width * 0.03,
                    )
                  : MyApp.startSkill
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
                  Flexible(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = 2;
                          });
                        }
                      },
                      onExit: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = -1;
                          });
                        }
                      },
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.circular(size.width * 0.01),
                        ),
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 500),
                          padding: _hoverIndex == 2
                              ? EdgeInsets.all(size.width * 0.015)
                              : EdgeInsets.all(size.width * 0.01),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Android Native",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.kanit(
                                    fontSize: size.width * 0.012,
                                    fontWeight: FontWeight.bold,
                                    color: Colours.text,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Lottie.network(
                                  "https://assets9.lottiefiles.com/packages/lf20_9F1pkg.json",
                                  height: size.width * 0.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = 3;
                          });
                        }
                      },
                      onExit: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = -1;
                          });
                        }
                      },
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.circular(size.width * 0.01),
                        ),
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 500),
                          padding: _hoverIndex == 3
                              ? EdgeInsets.all(size.width * 0.015)
                              : EdgeInsets.all(size.width * 0.01),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "SQL",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.kanit(
                                    fontSize: size.width * 0.012,
                                    fontWeight: FontWeight.bold,
                                    color: Colours.text,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Lottie.network(
                                  "https://assets4.lottiefiles.com/private_files/lf30_w11f2rwn.json",
                                  height: size.width * 0.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
              padding: MyApp.isMobile
                  ? EdgeInsets.only(
                      left: size.width * 0.02,
                      right: size.width * 0.02,
                      top: size.width * 0.03,
                      bottom: size.width * 0.03,
                    )
                  : MyApp.startSkill
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
                  Flexible(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = 4;
                          });
                        }
                      },
                      onExit: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = -1;
                          });
                        }
                      },
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.circular(size.width * 0.01),
                        ),
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 500),
                          padding: _hoverIndex == 4
                              ? EdgeInsets.all(size.width * 0.015)
                              : EdgeInsets.all(size.width * 0.01),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "C",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.kanit(
                                    fontSize: size.width * 0.012,
                                    fontWeight: FontWeight.bold,
                                    color: Colours.text,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Lottie.network(
                                  "https://assets4.lottiefiles.com/private_files/lf30_8wwkvgel.json",
                                  height: size.width * 0.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = 5;
                          });
                        }
                      },
                      onExit: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = -1;
                          });
                        }
                      },
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.circular(size.width * 0.01),
                        ),
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 500),
                          padding: _hoverIndex == 5
                              ? EdgeInsets.all(size.width * 0.015)
                              : EdgeInsets.all(size.width * 0.01),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Java",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.kanit(
                                    fontSize: size.width * 0.012,
                                    fontWeight: FontWeight.bold,
                                    color: Colours.text,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Lottie.network(
                                  "https://assets7.lottiefiles.com/packages/lf20_zh6xtlj9.json",
                                  height: size.width * 0.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
              padding: MyApp.isMobile
                  ? EdgeInsets.only(
                      left: size.width * 0.02,
                      right: size.width * 0.02,
                      top: size.width * 0.03,
                      bottom: size.width * 0.03,
                    )
                  : MyApp.startSkill
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
                  Flexible(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = 6;
                          });
                        }
                      },
                      onExit: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = -1;
                          });
                        }
                      },
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.circular(size.width * 0.01),
                        ),
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 500),
                          padding: _hoverIndex == 6
                              ? EdgeInsets.all(size.width * 0.015)
                              : EdgeInsets.all(size.width * 0.01),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Python",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.kanit(
                                    fontSize: size.width * 0.012,
                                    fontWeight: FontWeight.bold,
                                    color: Colours.text,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Lottie.network(
                                  "https://assets8.lottiefiles.com/packages/lf20_2znxgjyt.json",
                                  height: size.width * 0.1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = 7;
                          });
                        }
                      },
                      onExit: (event) {
                        if (mounted) {
                          setState(() {
                            _hoverIndex = -1;
                          });
                        }
                      },
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.circular(size.width * 0.01),
                        ),
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 500),
                          padding: _hoverIndex == 7
                              ? EdgeInsets.all(size.width * 0.015)
                              : EdgeInsets.all(size.width * 0.01),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "GitHub",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.kanit(
                                    fontSize: size.width * 0.012,
                                    fontWeight: FontWeight.bold,
                                    color: Colours.text,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Lottie.network(
                                  "https://assets7.lottiefiles.com/packages/lf20_cwqf5i6h.json",
                                  height: size.width * 0.1,
                                ),
                              ),
                            ],
                          ),
                        ),
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
