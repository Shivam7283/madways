import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:madways/app/landing_page.dart';

import '../../main.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'madWays',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePageSplash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePageSplash extends StatefulWidget {
  @override
  _MyHomePageSplashState createState() => _MyHomePageSplashState();
}

class _MyHomePageSplashState extends State<MyHomePageSplash> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LandingPage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Image.asset(
          "images/01.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          //height: 100,
//        color: Colors.white,
        ),
      ),
    );
  }
}

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("GeeksForGeeks")),
//       body: Center(
//           child: Text(
//         "Home page",
//         textScaleFactor: 2,
//       )),
//     );
//   }
// }
