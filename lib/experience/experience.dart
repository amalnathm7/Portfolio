import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  int hoverIndex1 = -1;
  int hoverIndex2 = -1;
  int hoverIndex3 = -1;
  List<Map<String, String>> internships = [
    {
      'title': 'CanadianFax Pvt. Ltd.',
      'role': 'International Intern',
      'sub-title': 'Android/iOS Development',
      'image': 'assets/intern1.png',
      'link': 'https://canadianfax.com/',
    },
    {
      'title': 'Guzty Accerons Pvt. Ltd.',
      'role': 'Project Employee',
      'sub-title': 'Android/iOS Development',
      'image': 'assets/intern2.png',
      'link': 'https://guzty.com/guztyapp.php',
    },
  ];
  List<Map<String, String>> freelance = [
    {
      'title': 'Referl.in',
      'sub-title': 'Android Development',
      'image': 'assets/freelance1.png',
      'link': 'https://play.google.com/store/apps/details?id=com.referl.referl',
    },
  ];
  List<Map<String, String>> projects = [
    {
      'title': 'Google Meet Clone',
      'sub-title': 'Video Conferencing',
      'role': 'Personal Project',
      'image': 'assets/proj1.png',
      'link': 'https://github.com/amalnathm7/Google-Meet-Clone',
    },
    {
      'title': 'Illusion',
      'sub-title': 'Disability Support',
      'role': 'Group Project',
      'image': 'assets/proj2.png',
      'link': 'https://github.com/Meenakshi2604/illusion',
    },
    {
      'title': 'Hestia 22',
      'sub-title': 'Event Management',
      'role': 'Group Project',
      'image': 'assets/proj3.png',
      'link':
          'https://play.google.com/store/apps/details?id=com.tkmce.hestia22',
    },
    {
      'title': 'Do It',
      'sub-title': 'Project Management',
      'role': 'Group Project',
      'image': 'assets/proj4.png',
      'link': 'https://do-it.en.uptodown.com/android',
    },
    {
      'title': 'Quark',
      'sub-title': 'Power Management',
      'role': 'Personal Project',
      'image': 'assets/proj5.png',
      'link': 'https://github.com/amalnathm7/Quark',
    },
    {
      'title': 'VotR',
      'sub-title': 'Voting Application',
      'role': 'Group Project',
      'image': 'assets/proj6.png',
      'link': 'https://github.com/amalnathm7/votr',
    },
    {
      'title': 'Memoir',
      'sub-title': 'Journal Application',
      'role': 'Group Project',
      'image': 'assets/proj7.png',
      'link': 'https://github.com/amalnathm7/memoir',
    },
    {
      'title': 'Bingo',
      'sub-title': 'Mobile Game',
      'role': 'Personal Project',
      'image': 'assets/proj8.png',
      'link': 'https://www.amazon.com/gp/product/B093THT2VY',
    },
  ];

  final String _mailUrl =
      "mailto:amalnathm7@gmail.com?subject=Hey Amal, I have something exciting for you!";
  final String _whatsAppUrl = "https://wa.me/917907587380";
  final String _telegramUrl = "https://t.me/amalnathm7";

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  Widget _getInternships(Size size) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedPadding(
          duration: const Duration(milliseconds: 500),
          padding: MyApp.startExp
              ? EdgeInsets.only(
                  top: size.height * 0.02,
                  bottom: size.height * 0.01,
                )
              : EdgeInsets.only(
                  left: size.width * 0.03,
                  right: size.width * 0.03,
                  bottom: size.height * 0.02,
                ),
          child: Text(
            "Some of my internships are listed below.\n",
            style: GoogleFonts.caveat(
              fontSize: size.width * 0.015,
              color: Colours.text1,
            ),
          ),
        ),
        Flexible(
          child: SizedBox(
            width: size.width / 3,
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 700),
              padding: MyApp.startExp
                  ? EdgeInsets.zero
                  : EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                    ),
              child: MouseRegion(
                onEnter: (event) {
                  MyApp.scrollLock = true;
                },
                onExit: (event) {
                  MyApp.scrollLock = false;
                },
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: internships.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: size.width * 0.01,
                          left: size.width * 0.01,
                          right: size.width * 0.01,
                        ),
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onEnter: (event) {
                            if (mounted) {
                              setState(() {
                                hoverIndex1 = index;
                              });
                            }
                          },
                          onExit: (event) {
                            if (mounted) {
                              setState(() {
                                hoverIndex1 = -1;
                              });
                            }
                          },
                          child: GestureDetector(
                            onTap: () {
                              _launchUrl(internships[index]['link']!);
                            },
                            child: AnimatedPadding(
                              duration: const Duration(milliseconds: 200),
                              padding: hoverIndex1 != index
                                  ? EdgeInsets.zero
                                  : EdgeInsets.only(
                                      left: size.width * 0.01,
                                      right: size.width * 0.01,
                                    ),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    alignment: MyApp.isMobile
                                        ? Alignment.center
                                        : Alignment.centerLeft,
                                    opacity: MyApp.isMobile
                                        ? 0.05
                                        : hoverIndex1 == index
                                            ? 0.75
                                            : 0.5,
                                    image: AssetImage(
                                        internships[index]['image']!),
                                  ),
                                  color: MyApp.isMobile
                                      ? Colors.black12
                                      : Colours.primary.withOpacity(0.25),
                                  borderRadius:
                                      BorderRadius.circular(size.width * 0.01),
                                ),
                                child: Column(
                                  crossAxisAlignment: MyApp.isMobile
                                      ? CrossAxisAlignment.center
                                      : CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: size.width * 0.02,
                                        left: size.width * 0.01,
                                        right: size.width * 0.01,
                                      ),
                                      child: Text(
                                        internships[index]['title']!,
                                        textAlign: MyApp.isMobile
                                            ? TextAlign.center
                                            : TextAlign.end,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.01,
                                          color: Colours.text1,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: size.width * 0.001,
                                        left: size.width * 0.01,
                                        right: size.width * 0.01,
                                      ),
                                      child: Text(
                                        internships[index]['role']!,
                                        textAlign: MyApp.isMobile
                                            ? TextAlign.center
                                            : TextAlign.end,
                                        style: TextStyle(
                                          fontSize: size.width * 0.007,
                                          color: Colours.text,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: size.width * 0.01,
                                        left: size.width * 0.01,
                                        right: size.width * 0.01,
                                        bottom: size.width * 0.02,
                                      ),
                                      child: Text(
                                        internships[index]['sub-title']!,
                                        textAlign: MyApp.isMobile
                                            ? TextAlign.center
                                            : TextAlign.end,
                                        style: TextStyle(
                                          fontSize: size.width * 0.008,
                                          color: Colours.text,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _getWidgets(Size size) {
    return [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 700),
              opacity: MyApp.startExp ? 0 : 1,
              child: Text(
                "What have I done?",
                style: GoogleFonts.kanit(
                  fontSize: size.width * 0.025,
                  fontWeight: FontWeight.bold,
                  color: Colours.text,
                ),
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 700),
              opacity: MyApp.startExp ? 0 : 1,
              child: Lottie.network(
                "https://assets2.lottiefiles.com/packages/lf20_iv4dsx3q.json",
                height: size.width * 0.1,
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 700),
              opacity: MyApp.startExp ? 0 : 1,
              child: Text(
                "Mainly internships, projects and freelance works.",
                style: GoogleFonts.caveat(
                  fontSize: size.width * 0.015,
                  fontWeight: FontWeight.bold,
                  color: Colours.text1,
                ),
              ),
            ),
            if (!MyApp.isMobile) _getInternships(size),
          ],
        ),
      ),
      Expanded(
        child: Container(
          width: size.width,
          decoration: BoxDecoration(
            color: Colours.primary,
          ),
          child: Row(
            children: [
              if (MyApp.isMobile) Flexible(child: _getInternships(size)),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MyApp.isMobile
                          ? size.width * 0.02
                          : size.width * 0.12,
                    ),
                    Flexible(
                      child: SizedBox(
                        width: size.width / 3,
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 700),
                          padding: MyApp.startExp
                              ? EdgeInsets.zero
                              : EdgeInsets.only(
                                  left: size.width * 0.05,
                                  right: size.width * 0.05,
                                ),
                          child: MouseRegion(
                            onEnter: (event) {
                              MyApp.scrollLock = true;
                            },
                            onExit: (event) {
                              MyApp.scrollLock = false;
                            },
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                itemCount: projects.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      top: size.width * 0.005,
                                      bottom: size.width * 0.005,
                                      left: size.width * 0.02,
                                      right: size.width * 0.02,
                                    ),
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onEnter: (event) {
                                        if (mounted) {
                                          setState(() {
                                            hoverIndex2 = index;
                                          });
                                        }
                                      },
                                      onExit: (event) {
                                        if (mounted) {
                                          setState(() {
                                            hoverIndex2 = -1;
                                          });
                                        }
                                      },
                                      child: GestureDetector(
                                        onTap: () {
                                          _launchUrl(projects[index]['link']!);
                                        },
                                        child: AnimatedPadding(
                                          duration:
                                              const Duration(milliseconds: 200),
                                          padding: hoverIndex2 != index
                                              ? EdgeInsets.zero
                                              : EdgeInsets.only(
                                                  left: size.width * 0.01,
                                                  right: size.width * 0.01,
                                                ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                alignment: MyApp.isMobile
                                                    ? Alignment.center
                                                    : Alignment.centerLeft,
                                                opacity: MyApp.isMobile
                                                    ? 0.05
                                                    : hoverIndex2 == index
                                                        ? 0.75
                                                        : 0.5,
                                                image: AssetImage(
                                                    projects[index]['image']!),
                                              ),
                                              color: Colors.black12,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      size.width * 0.01),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: MyApp.isMobile
                                                  ? CrossAxisAlignment.center
                                                  : CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: size.width * 0.02,
                                                    left: size.width * 0.01,
                                                    right: size.width * 0.01,
                                                  ),
                                                  child: Text(
                                                    projects[index]['title']!,
                                                    textAlign: MyApp.isMobile
                                                        ? TextAlign.center
                                                        : TextAlign.end,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colours.text1,
                                                      fontSize:
                                                          size.width * 0.01,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: size.width * 0.001,
                                                    left: size.width * 0.01,
                                                    right: size.width * 0.01,
                                                  ),
                                                  child: Text(
                                                    projects[index]['role']!,
                                                    textAlign: MyApp.isMobile
                                                        ? TextAlign.center
                                                        : TextAlign.end,
                                                    style: TextStyle(
                                                      fontSize:
                                                          size.width * 0.007,
                                                      color: Colours.text,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: size.width * 0.01,
                                                    left: size.width * 0.01,
                                                    right: size.width * 0.01,
                                                    bottom: size.width * 0.02,
                                                  ),
                                                  child: Text(
                                                    projects[index]
                                                        ['sub-title']!,
                                                    textAlign: MyApp.isMobile
                                                        ? TextAlign.center
                                                        : TextAlign.end,
                                                    style: TextStyle(
                                                      fontSize:
                                                          size.width * 0.008,
                                                      color: Colours.text,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ),
                    ),
                    AnimatedPadding(
                      duration: const Duration(milliseconds: 500),
                      padding: MyApp.startExp
                          ? EdgeInsets.zero
                          : EdgeInsets.only(top: size.width * 0.01),
                      child: Text(
                        "These are some of my favourite projects.\n",
                        style: GoogleFonts.caveat(
                          fontSize: size.width * 0.015,
                          color: Colours.text1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "And some of my freelance works.\n",
              style: GoogleFonts.caveat(
                fontSize: size.width * 0.015,
                color: Colours.text1,
              ),
            ),
            Flexible(
              child: SizedBox(
                width: size.width / 3,
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startExp
                      ? EdgeInsets.zero
                      : EdgeInsets.only(
                          left: size.width * 0.05,
                          right: size.width * 0.05,
                        ),
                  child: MouseRegion(
                    onEnter: (event) {
                      MyApp.scrollLock = true;
                    },
                    onExit: (event) {
                      MyApp.scrollLock = false;
                    },
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: freelance.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: size.width * 0.01,
                              left: size.width * 0.02,
                              right: size.width * 0.02,
                            ),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              onEnter: (event) {
                                if (mounted) {
                                  setState(() {
                                    hoverIndex3 = index;
                                  });
                                }
                              },
                              onExit: (event) {
                                if (mounted) {
                                  setState(() {
                                    hoverIndex3 = -1;
                                  });
                                }
                              },
                              child: GestureDetector(
                                onTap: () {
                                  _launchUrl(freelance[index]['link']!);
                                },
                                child: AnimatedPadding(
                                  duration: const Duration(milliseconds: 200),
                                  padding: hoverIndex3 != index
                                      ? EdgeInsets.zero
                                      : EdgeInsets.only(
                                          left: size.width * 0.01,
                                          right: size.width * 0.01,
                                        ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        alignment: MyApp.isMobile
                                            ? Alignment.center
                                            : Alignment.centerLeft,
                                        opacity: MyApp.isMobile
                                            ? 0.05
                                            : hoverIndex3 == index
                                                ? 0.75
                                                : 0.5,
                                        image: AssetImage(
                                            freelance[index]['image']!),
                                      ),
                                      color: Colours.primary.withOpacity(0.25),
                                      borderRadius: BorderRadius.circular(
                                          size.width * 0.01),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: MyApp.isMobile
                                          ? CrossAxisAlignment.center
                                          : CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: size.width * 0.02,
                                            left: size.width * 0.01,
                                            right: size.width * 0.01,
                                          ),
                                          child: Text(
                                            freelance[index]['title']!,
                                            textAlign: MyApp.isMobile
                                                ? TextAlign.center
                                                : TextAlign.end,
                                            style: TextStyle(
                                              color: Colours.text1,
                                              fontWeight: FontWeight.bold,
                                              fontSize: size.width * 0.01,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: size.width * 0.01,
                                            left: size.width * 0.01,
                                            right: size.width * 0.01,
                                            bottom: size.width * 0.02,
                                          ),
                                          child: Text(
                                            freelance[index]['sub-title']!,
                                            textAlign: MyApp.isMobile
                                                ? TextAlign.center
                                                : TextAlign.end,
                                            style: TextStyle(
                                              fontSize: size.width * 0.008,
                                              color: Colours.text,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          MyApp.startExp = false;
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
      duration: const Duration(milliseconds: 500),
      opacity: MyApp.startExp ? 0 : 1,
      child: Stack(
        children: [
          Center(
            child: MyApp.isMobile
                ? Column(
                    children: _getWidgets(size),
                  )
                : Row(children: _getWidgets(size)),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 700),
            opacity: MyApp.startExp ? 0 : 1,
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
                    "Y EXPERIENC",
                    style: GoogleFonts.kanit(
                      fontSize: size.width * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "E.",
                    style: GoogleFonts.kanit(
                      fontSize: size.width * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colours.text,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            height: size.height,
            width: size.width,
            duration: const Duration(milliseconds: 500),
            bottom: 0,
            right: MyApp.startExp ? -100 : 0,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: size.width * 0.05,
                  bottom: size.width * 0.03,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height * 0.02),
                      child: Text(
                        "Impressed? Let's connect.",
                        textAlign: TextAlign.end,
                        style: GoogleFonts.caveat(
                          fontSize: size.width * 0.012,
                          color: Colours.text1,
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: size.width * 0.005,
                            right: size.width * 0.005,
                          ),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                _launchUrl(_mailUrl);
                              },
                              child: Icon(
                                Icons.mail,
                                size: size.width * 0.012,
                                color: Colours.text,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: size.width * 0.005,
                            right: size.width * 0.005,
                          ),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                _launchUrl(_whatsAppUrl);
                              },
                              child: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                size: size.width * 0.012,
                                color: Colours.text,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: size.width * 0.005,
                            right: size.width * 0.005,
                          ),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                _launchUrl(_telegramUrl);
                              },
                              child: FaIcon(
                                FontAwesomeIcons.telegram,
                                size: size.width * 0.012,
                                color: Colours.text,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
