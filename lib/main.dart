import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/about/about.dart';
import 'package:portfolio/contact/contact.dart';
import 'package:portfolio/experience/experience.dart';
import 'package:portfolio/home/home.dart';
import 'package:portfolio/skills/skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static bool scrollLock = false;
  static int index = 0;
  static final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amal Nath 🎩',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const View(),
    );
  }
}

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colours.bg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
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
      ),
      body: Listener(
        onPointerSignal: (pointerSignal) {
          if (!MyApp.scrollLock && pointerSignal is PointerScrollEvent) {
            if (pointerSignal.scrollDelta.dy > 0) {
              MyApp.controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.decelerate);
              Future.delayed(const Duration(milliseconds: 600), () {
                if (mounted) {
                  setState(() {
                    MyApp.index = MyApp.controller.page!.toInt();
                  });
                }
              });
            } else {
              MyApp.controller.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.decelerate);
              Future.delayed(const Duration(milliseconds: 600), () {
                if (mounted) {
                  setState(() {
                    MyApp.index = MyApp.controller.page!.toInt();
                  });
                }
              });
            }
          }
        },
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          controller: MyApp.controller,
          children: const [
            SkillsPage(),
            HomePage(),
            AboutPage(),
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
}
