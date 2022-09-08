import 'package:portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool _menu = false;
  int _menuIndex = 0;
  AnimationController? _animationController;
  final String _gitHubUrl = "https://github.com/amalnathm7";
  final String _linkedInUrl =
      "https://www.linkedin.com/in/amal-nath-m-1ba12a192/";
  final String _instaUrl = "https://www.instagram.com/_amal_nath_m_/";
  final String _twitterUrl = "https://twitter.com/amalnathm7";

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  void _animateToPage(int index) {
    if (mounted) {
      setState(() {
        MyApp.index = index;
      });
    }
    MyApp.controller.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnimatedPadding(
      duration: const Duration(milliseconds: 500),
      padding: _menu
          ? EdgeInsets.zero
          : EdgeInsets.only(
              left: 30,
              right: 30,
              top: size.width * 0.01,
              bottom: size.width * 0.02,
            ),
      child: Stack(
        children: [
          Center(
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 500),
              padding: _menu
                  ? EdgeInsets.only(left: size.width * 0.3)
                  : EdgeInsets.zero,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colours.primary,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            top: size.height * 0.4,
            left: _menu ? size.width * 0.1 : -500,
            duration: const Duration(milliseconds: 500),
            child: MouseRegion(
              onEnter: (event) {
                if (mounted) {
                  setState(() {
                    _menuIndex = 0;
                  });
                }
              },
              onExit: (event) {
                if (mounted) {
                  setState(() {
                    _menuIndex = 0;
                  });
                }
              },
              child: TextButton(
                onPressed: () {
                  _animateToPage(0);
                },
                child: Stack(
                  children: [
                    Positioned(
                      top: size.width * 0.003,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: size.width * 0.004,
                        width: _menuIndex == 0 ? size.width * 0.04 : 0,
                        decoration: BoxDecoration(
                          color: Colours.primary.withOpacity(0.75),
                        ),
                      ),
                    ),
                    Text(
                      "HOME",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: size.width * 0.008,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: size.height * 0.45,
            left: _menu ? size.width * 0.1 : -500,
            duration: const Duration(milliseconds: 600),
            child: MouseRegion(
              onEnter: (event) {
                if (mounted) {
                  setState(() {
                    _menuIndex = 1;
                  });
                }
              },
              onExit: (event) {
                if (mounted) {
                  setState(() {
                    _menuIndex = 0;
                  });
                }
              },
              child: TextButton(
                onPressed: () {
                  _animateToPage(1);
                },
                child: Stack(
                  children: [
                    Positioned(
                      top: size.width * 0.003,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: size.width * 0.004,
                        width: _menuIndex == 1 ? size.width * 0.08 : 0,
                        decoration: BoxDecoration(
                          color: Colours.primary.withOpacity(0.75),
                        ),
                      ),
                    ),
                    Text(
                      "WHO AM I?",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: size.width * 0.008,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: size.height * 0.5,
            left: _menu ? size.width * 0.1 : -500,
            duration: const Duration(milliseconds: 700),
            child: MouseRegion(
              onEnter: (event) {
                if (mounted) {
                  setState(() {
                    _menuIndex = 2;
                  });
                }
              },
              onExit: (event) {
                if (mounted) {
                  setState(() {
                    _menuIndex = 0;
                  });
                }
              },
              child: TextButton(
                onPressed: () {
                  _animateToPage(2);
                },
                child: Stack(
                  children: [
                    Positioned(
                      top: size.width * 0.003,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: size.width * 0.004,
                        width: _menuIndex == 2 ? size.width * 0.15 : 0,
                        decoration: BoxDecoration(
                          color: Colours.primary.withOpacity(0.75),
                        ),
                      ),
                    ),
                    Text(
                      "WHAT DO I KNOW?",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: size.width * 0.008,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: size.height * 0.55,
            left: _menu ? size.width * 0.1 : -500,
            duration: const Duration(milliseconds: 800),
            child: MouseRegion(
              onEnter: (event) {
                if (mounted) {
                  setState(() {
                    _menuIndex = 3;
                  });
                }
              },
              onExit: (event) {
                if (mounted) {
                  setState(() {
                    _menuIndex = 0;
                  });
                }
              },
              child: TextButton(
                onPressed: () {
                  _animateToPage(3);
                },
                child: Stack(
                  children: [
                    Positioned(
                      top: size.width * 0.003,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: size.width * 0.004,
                        width: _menuIndex == 3 ? size.width * 0.15 : 0,
                        decoration: BoxDecoration(
                          color: Colours.primary.withOpacity(0.75),
                        ),
                      ),
                    ),
                    Text(
                      "WHAT HAVE I DONE?",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: size.width * 0.008,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: size.height * 0.6,
            left: _menu ? size.width * 0.1 : -500,
            duration: const Duration(milliseconds: 900),
            child: MouseRegion(
              onEnter: (event) {
                if (mounted) {
                  setState(() {
                    _menuIndex = 4;
                  });
                }
              },
              onExit: (event) {
                if (mounted) {
                  setState(() {
                    _menuIndex = 0;
                  });
                }
              },
              child: TextButton(
                onPressed: () {
                  _animateToPage(4);
                },
                child: Stack(
                  children: [
                    Positioned(
                      top: size.width * 0.003,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: size.width * 0.004,
                        width: _menuIndex == 4 ? size.width * 0.15 : 0,
                        decoration: BoxDecoration(
                          color: Colours.primary.withOpacity(0.75),
                        ),
                      ),
                    ),
                    Text(
                      "LET'S GET IN TOUCH",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: size.width * 0.008,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: SizedBox(
                    height: size.width * 0.1,
                  ),
                ),
                Flexible(
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: IconButton(
                      splashRadius: size.width * 0.01,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          _menu = !_menu;
                        });

                        _menu
                            ? _animationController!.forward()
                            : _animationController!.reverse();
                      },
                      icon: AnimatedIcon(
                        size: size.width * 0.02,
                        icon: AnimatedIcons.menu_close,
                        progress: _animationController!,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: _menu ? 0 : 1,
                    child: Transform.scale(
                      scaleX: -1,
                      child: RotatedBox(
                        quarterTurns: 0,
                        child: Lottie.network(
                          "https://assets7.lottiefiles.com/private_files/lf30_xzwwylsk.json",
                          height: size.width * 0.075,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: size.width * 0.02),
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 500),
                      opacity: _menu ? 0 : 1,
                      child: Text(
                        "You can jump into\nmy life here",
                        style: GoogleFonts.caveat(
                          fontSize: size.width * 0.015,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedPadding(
            duration: const Duration(milliseconds: 500),
            padding: _menu
                ? EdgeInsets.only(left: size.width * 0.3)
                : EdgeInsets.zero,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      height: size.width * 0.18,
                      width: size.width * 0.18,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.25),
                          borderRadius: BorderRadius.circular(size.width / 20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(size.width / 20),
                        child: Image.asset(
                          "assets/pic1.png",
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            "HEL",
                            style: GoogleFonts.kanit(
                              fontSize: size.width * 0.1,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "LO.",
                            style: GoogleFonts.kanit(
                              fontSize: size.width * 0.1,
                              fontWeight: FontWeight.bold,
                              color: Colours.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "I'm Amal Nath, a student, programmer and software developer",
                      style: GoogleFonts.caveat(
                        fontSize: size.width * 0.02,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: size.width * 0.02),
                    child: AnimatedOpacity(
                      opacity: _menu ? 0 : 1,
                      duration: const Duration(milliseconds: 500),
                      child: Text(
                        "I'm active in\nthese platforms",
                        style: GoogleFonts.caveat(
                          fontSize: size.width * 0.015,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: AnimatedOpacity(
                    opacity: _menu ? 0 : 1,
                    duration: const Duration(milliseconds: 500),
                    child: Transform.scale(
                      scaleX: -1,
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Lottie.network(
                          "https://assets7.lottiefiles.com/private_files/lf30_xzwwylsk.json",
                          height: size.width * 0.075,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: IconButton(
                    splashRadius: size.width * 0.01,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      _launchUrl(_gitHubUrl);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      size: size.width * 0.015,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Flexible(
                  child: IconButton(
                    splashRadius: size.width * 0.01,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      _launchUrl(_linkedInUrl);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: size.width * 0.015,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Flexible(
                  child: IconButton(
                    splashRadius: size.width * 0.01,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      _launchUrl(_instaUrl);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      size: size.width * 0.015,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Flexible(
                  child: IconButton(
                    splashRadius: size.width * 0.01,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      _launchUrl(_twitterUrl);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      size: size.width * 0.015,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: _menu ? 0 : 0.25,
              child: Lottie.network(
                "https://assets3.lottiefiles.com/packages/lf20_uzoyW6.json",
                height: size.width * 0.05,
                width: size.width * 0.05,
              ),
            ),
          )
        ],
      ),
    );
  }
}
