import 'dart:async';

import 'package:flutter/material.dart';
import 'package:aqua_fish/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 24, 42, 46),
          ),
        ),
        Center(
          child: Container(
            child: Image.asset('assets/images/logo.png'),
          ),
        )
      ],
    ));
  }
}
