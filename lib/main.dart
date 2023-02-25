import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:madways/app/onboarding/onboarding_screen.dart';
import 'package:madways/app/splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:madways/app/landing_page.dart';
import 'package:madways/services/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

int isviewed;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'madWays',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: isviewed != 0 ? SplashScreen() : OnboardingScreen(),
      ),
    );
  }
}
