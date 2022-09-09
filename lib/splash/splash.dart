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

    if (MyApp.isMobile) {
      size = Size(size.height, size.width);
    }

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colours.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            "https://assets5.lottiefiles.com/packages/lf20_ocmino.json",
            height: size.width * 0.1,
            width: size.width * 0.1,
          ),
        ],
      ),
    );
  }
}
