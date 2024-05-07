import 'package:astrotalk/screens/HomePage.dart';
import 'package:astrotalk/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.mainbgcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 130.0, bottom: 140),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/virgo (1).png"),
                Text(
                  'AstroTalk',
                  style: TextStyle(
                    color: Pallete.txt2color,
                    fontSize: 40,
                    fontFamily: 'Saman',
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 1400));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 1600));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
