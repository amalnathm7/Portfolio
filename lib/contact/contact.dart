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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Lottie.network(
                      "https://assets8.lottiefiles.com/private_files/lf30_yPKMfX.json",
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: size.width * 0.01,
                      ),
                      child: Text(
                        "I would love to discuss more opportunities. So shoot away!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.caveat(
                          fontSize: size.width * 0.014,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: size.width * 0.01,
                        bottom: size.width * 0.01,
                      ),
                      child: SizedBox(
                        width: size.width * 0.2,
                        child: TextField(
                          cursorColor: Colours.primary,
                          decoration: const InputDecoration(
                            hintText: "Name",
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: size.width * 0.01,
                        bottom: size.width * 0.01,
                      ),
                      child: SizedBox(
                        width: size.width * 0.2,
                        child: TextField(
                          cursorColor: Colours.primary,
                          decoration: const InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: size.width * 0.01,
                        bottom: size.width * 0.01,
                      ),
                      child: SizedBox(
                        width: size.width * 0.2,
                        child: TextField(
                          cursorColor: Colours.primary,
                          decoration: const InputDecoration(
                            hintText: "Project Domain",
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: size.width * 0.01,
                        bottom: size.width * 0.01,
                      ),
                      child: SizedBox(
                        width: size.width * 0.2,
                        child: TextField(
                          minLines: 5,
                          maxLines: 10,
                          cursorColor: Colours.primary,
                          decoration: const InputDecoration(
                            hintText: "Project Description",
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: size.width * 0.01,
                        bottom: size.width * 0.01,
                      ),
                      child: MaterialButton(
                        color: Colours.primary,
                        onPressed: () {},
                        child: SizedBox(
                          height: size.width * 0.018,
                          width: size.width * 0.07,
                          child: Center(
                            child: Text(
                              "JUST SEND",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.kanit(
                                fontSize: size.width * 0.008,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
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
                ],
              ),
            ],
          ),
        ),
        Container(
          height: size.width * 0.05,
          width: size.width,
          color: Colours.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
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
                          color: Colors.grey[900],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "©️2022 Amal Nath M",
                          style: TextStyle(
                            fontSize: size.width * 0.007,
                            color: Colors.grey[800],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Made with Flutter",
                            style: TextStyle(
                              fontSize: size.width * 0.005,
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Text(
                      "(+91) 790 758 7380",
                      style: TextStyle(
                        fontSize: size.width * 0.008,
                        color: Colors.grey[900],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
