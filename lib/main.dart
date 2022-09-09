import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/about/about.dart';
import 'package:portfolio/contact/contact.dart';
import 'package:portfolio/experience/experience.dart';
import 'package:portfolio/home/home.dart';
import 'package:portfolio/skills/skills.dart';
import 'package:portfolio/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static bool isMobile = false;
  static bool startHome = true;
  static bool startAbout = true;
  static bool startSkill = true;
  static bool startExp = true;
  static bool startCont = true;
  static bool scrollLock = false;
  static int index = 0;
  static final PageController controller = PageController();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _splash = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (mounted) {
        setState(() {
          _splash = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amal Nath 🎩',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(),
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: Stack(
        children: [
          const View(),
          if (_splash) const SplashPage(),
        ],
      ),
    );
  }
}

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  int _menuIndex = 0;

  List<Widget> _getActions(Size size) {
    return [
      Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.01,
          right: size.width * 0.01,
        ),
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
                _menuIndex = MyApp.index;
              });
            }
          },
          child: TextButton(
            onPressed: () {
              MyApp.controller.animateToPage(0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.decelerate);
              if (mounted) {
                setState(() {
                  MyApp.index = 0;
                });
              }
            },
            child: Stack(
              children: [
                Positioned(
                  top: size.width * 0.003,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: size.width * 0.003,
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
                    fontSize: size.width * 0.007,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: _menuIndex == 0 ? Colors.grey[800] : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.01,
          right: size.width * 0.01,
        ),
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
                _menuIndex = MyApp.index;
              });
            }
          },
          child: TextButton(
            onPressed: () {
              MyApp.controller.animateToPage(1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.decelerate);
              if (mounted) {
                setState(() {
                  MyApp.index = 1;
                });
              }
            },
            child: Stack(
              children: [
                Positioned(
                  top: size.width * 0.003,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: size.width * 0.003,
                    width: _menuIndex == 1 ? size.width * 0.08 : 0,
                    decoration: BoxDecoration(
                      color: Colours.primary.withOpacity(0.75),
                    ),
                  ),
                ),
                Text(
                  "ABOUT",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: size.width * 0.007,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: _menuIndex == 1 ? Colors.grey[800] : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.01,
          right: size.width * 0.01,
        ),
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
                _menuIndex = MyApp.index;
              });
            }
          },
          child: TextButton(
            onPressed: () {
              MyApp.controller.animateToPage(2,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.decelerate);
              if (mounted) {
                setState(() {
                  MyApp.index = 2;
                });
              }
            },
            child: Stack(
              children: [
                Positioned(
                  top: size.width * 0.003,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: size.width * 0.003,
                    width: _menuIndex == 2 ? size.width * 0.15 : 0,
                    decoration: BoxDecoration(
                      color: Colours.primary.withOpacity(0.75),
                    ),
                  ),
                ),
                Text(
                  "SKILLS",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: size.width * 0.007,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: _menuIndex == 2 ? Colors.grey[800] : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.01,
          right: size.width * 0.01,
        ),
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
                _menuIndex = MyApp.index;
              });
            }
          },
          child: TextButton(
            onPressed: () {
              MyApp.controller.animateToPage(3,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.decelerate);
              if (mounted) {
                setState(() {
                  MyApp.index = 3;
                });
              }
            },
            child: Stack(
              children: [
                Positioned(
                  top: size.width * 0.003,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: size.width * 0.003,
                    width: _menuIndex == 3 ? size.width * 0.15 : 0,
                    decoration: BoxDecoration(
                      color: Colours.primary.withOpacity(0.75),
                    ),
                  ),
                ),
                Text(
                  "EXPERIENCE",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: size.width * 0.007,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: _menuIndex == 3 ? Colors.grey[800] : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.01,
          right: size.width * 0.01,
        ),
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
                _menuIndex = MyApp.index;
              });
            }
          },
          child: TextButton(
            onPressed: () {
              MyApp.controller.animateToPage(4,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.decelerate);
              if (mounted) {
                setState(() {
                  MyApp.index = 4;
                });
              }
            },
            child: Stack(
              children: [
                Positioned(
                  top: size.width * 0.003,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: size.width * 0.003,
                    width: _menuIndex == 4 ? size.width * 0.15 : 0,
                    decoration: BoxDecoration(
                      color: Colours.primary.withOpacity(0.75),
                    ),
                  ),
                ),
                Text(
                  "CONTACT",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: size.width * 0.007,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: _menuIndex == 4 ? Colors.grey[800] : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    MyApp.controller.addListener(() {
      if (mounted) {
        setState(() {
          MyApp.index = MyApp.controller.page!.toInt();
          _menuIndex = MyApp.index;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width < 800 && mounted) {
      setState(() {
        MyApp.isMobile = true;
      });
    } else if (mounted) {
      setState(() {
        MyApp.isMobile = false;
      });
    }

    if (MyApp.isMobile) {
      size = Size(size.height, size.width);
    }

    return Scaffold(
      backgroundColor: Colours.bg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colours.text,
          size: size.width * 0.01,
        ),
        toolbarHeight: size.height * 0.05,
        title: TextButton(
          onPressed: () {
            MyApp.controller.animateToPage(0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.decelerate);
            if (mounted) {
              setState(() {
                MyApp.index = 0;
              });
            }
          },
          child: Text(
            "AMAL NATH 🎩",
            style: GoogleFonts.shadowsIntoLight(
              fontSize: size.width * 0.01,
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ),
        actions: MyApp.isMobile ? null : _getActions(size),
      ),
      drawer: MyApp.isMobile
          ? Drawer(
              width: size.height / 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _getActions(size),
              ),
            )
          : null,
      body: Scrollbar(
        controller: MyApp.controller,
        child: PageView(
          scrollDirection: Axis.vertical,
          controller: MyApp.controller,
          children: const [
            HomePage(),
            AboutPage(),
            SkillsPage(),
            ExperiencePage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}

class Colours {
  static Color bg = Colors.white54;
  static Color primary = const Color(0xFFCE96FB);
  static Color secondary = const Color(0xFFCF9FFF);
  static Color text = Colors.grey[800]!;
  static Color text1 = Colors.grey[900]!;
}
