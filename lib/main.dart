import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rise/constants.dart';
import 'package:rise/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rise',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        unselectedWidgetColor: PRIMARY_PINK,
        focusColor: PRIMARY_DARK_PINK,
        errorColor: Colors.red,
        buttonColor: PRIMARY_DARK_PINK,
        primaryColor: PRIMARY_PINK,
        backgroundColor: PRIMARY_BG,
        primaryColorLight: PRIMARY_PINK,
        primaryColorDark: PRIMARY_BLUE,
        bottomAppBarColor: PRIMARY_BG,
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: PRIMARY_PINK,
      seconds: 3,
      navigateAfterSeconds: new Home(),
      image: new Image.asset('assets/logo.png'),
      loadingText: Text(
        "Loading",
      ),
      photoSize: 200.0,
    );
  }
}