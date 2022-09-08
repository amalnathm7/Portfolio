import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      color: Colours.primary,
      child: Lottie.network(
        "https://assets5.lottiefiles.com/packages/lf20_ocmino.json",
      ),
    );
  }
}
