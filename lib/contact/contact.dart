import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/main.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _domainController = TextEditingController();
  final _descController = TextEditingController();

  Future<bool> _send() async {
    _nameController.clear();
    _emailController.clear();
    _domainController.clear();
    _descController.clear();
    return true;
  }

  List<Widget> _getWidgets(Size size) {
    return [
      Expanded(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 700),
          opacity: MyApp.startCont ? 0 : 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Lottie.network(
                  "https://assets8.lottiefiles.com/private_files/lf30_yPKMfX.json",
                ),
              ),
              Flexible(
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startCont
                      ? EdgeInsets.zero
                      : EdgeInsets.only(
                          bottom: size.width * 0.01,
                        ),
                  child: Text(
                    "I would love to discuss more opportunities. So shoot away!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.caveat(
                      fontSize: size.width * 0.014,
                      color: Colours.text1,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startCont
                      ? EdgeInsets.zero
                      : EdgeInsets.only(
                          top: size.width * 0.01,
                          bottom: size.width * 0.01,
                        ),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextField(
                      style: TextStyle(
                        fontSize: size.width * 0.008,
                        color: Colours.text,
                      ),
                      controller: _nameController,
                      cursorColor: Colours.primary,
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                          fontSize: size.width * 0.008,
                          color: Colours.text.withOpacity(0.75),
                        ),
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startCont
                      ? EdgeInsets.zero
                      : EdgeInsets.only(
                          top: size.width * 0.01,
                          bottom: size.width * 0.01,
                        ),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextField(
                      controller: _emailController,
                      cursorColor: Colours.primary,
                      style: TextStyle(
                        fontSize: size.width * 0.008,
                        color: Colours.text,
                      ),
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontSize: size.width * 0.008,
                          color: Colours.text.withOpacity(0.75),
                        ),
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startCont
                      ? EdgeInsets.zero
                      : EdgeInsets.only(
                          top: size.width * 0.01,
                          bottom: size.width * 0.01,
                        ),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextField(
                      style: TextStyle(
                        fontSize: size.width * 0.008,
                        color: Colours.text,
                      ),
                      controller: _domainController,
                      cursorColor: Colours.primary,
                      decoration: InputDecoration(
                        hintText: "Project Domain",
                        hintStyle: TextStyle(
                          fontSize: size.width * 0.008,
                          color: Colours.text.withOpacity(0.75),
                        ),
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startCont
                      ? EdgeInsets.zero
                      : EdgeInsets.only(
                          top: size.width * 0.01,
                          bottom: size.width * 0.01,
                        ),
                  child: SizedBox(
                    width: size.width * 0.2,
                    child: TextField(
                      style: TextStyle(
                        fontSize: size.width * 0.008,
                        color: Colours.text,
                      ),
                      controller: _descController,
                      minLines: 5,
                      maxLines: 10,
                      cursorColor: Colours.primary,
                      decoration: InputDecoration(
                        hintText: "Project Description",
                        hintStyle: TextStyle(
                          fontSize: size.width * 0.008,
                          color: Colours.text.withOpacity(0.75),
                        ),
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 700),
                  padding: MyApp.startCont
                      ? EdgeInsets.zero
                      : EdgeInsets.only(
                          top: size.width * 0.01,
                          bottom: size.width * 0.01,
                        ),
                  child: SizedBox(
                    height: size.width * 0.018,
                    width: size.width * 0.07,
                    child: MaterialButton(
                      padding: EdgeInsets.zero,
                      color: Colours.primary,
                      onPressed: () async {
                        await _send();
                      },
                      child: Text(
                        "JUST SEND",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kanit(
                          fontSize: size.width * 0.008,
                          letterSpacing: MyApp.isMobile ? 1.0 : 1.5,
                          color: Colours.text,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Expanded(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 700),
          opacity: MyApp.startCont ? 0 : 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            color: Colours.text,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
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
          MyApp.startCont = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (MyApp.isMobile) {
      size = Size(size.height, size.width);
    }

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: MyApp.startCont ? 0 : 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: MyApp.isMobile
                ? Column(
                    verticalDirection: VerticalDirection.up,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _getWidgets(size),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _getWidgets(size),
                  ),
          ),
          Container(
            height: size.width * 0.05,
            width: size.width,
            color: Colours.primary,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.02,
                    ),
                    child: TextButton(
                      onPressed: () async {
                        if (!await launchUrl(Uri.parse(
                            "mailto:amalnathm7@gmail.com?subject=Hey Amal, I have something exciting for you!"))) {
                          throw 'Could not launch';
                        }
                      },
                      child: Text(
                        "amalnathm7@gmail.com",
                        style: TextStyle(
                          fontSize: size.width * 0.008,
                          color: Colours.text,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "©️2022 Amal Nath M",
                        style: TextStyle(
                          fontSize: size.width * 0.007,
                          color: Colours.text,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Made with Flutter",
                          style: TextStyle(
                            fontSize: size.width * 0.005,
                            color: Colours.text,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: size.width * 0.02,
                    ),
                    child: Text(
                      "(+91) 790 758 7380",
                      style: TextStyle(
                        fontSize: size.width * 0.008,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
