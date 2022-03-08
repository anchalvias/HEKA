import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heka_app/screens/bottomnav/bottomnav.dart';
import 'package:heka_app/screens/dashboard/dashboard.dart';
import 'package:heka_app/screens/infopages/infopages.dart';
import 'package:heka_app/screens/mapspage/mapspage.dart';
import 'package:heka_app/screens/resourcespage.dart';
import 'package:heka_app/screens/questions/questions.dart';
import 'package:heka_app/screens/signinpage/siginpage.dart';
import 'package:heka_app/screens/signuppage/SignUpPage.dart';
import 'package:heka_app/screens/splashscreen/splashscreen.dart';
// import 'package:heka_app/screens/testdashboard.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.black));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          inputDecorationTheme: InputDecorationTheme(
              focusedBorder: UnderlineInputBorder(
                  // borderSide: BorderSide(color: Color.)
                  ))),
      initialRoute: "/",
      //Name routes
      routes: {
        "/": (context) => SplashScreen(),
        "/infopage": (context) => InfoPages(),
        "/main": (context) => BottomNav(),
        "/dashboard": (context) => Dashboard(),
        "/signinpage": (context) => SigninPage(),
        "/signuppage": (context) => SignUpPage(),
        "/mappage": (context) => MapPage(),
        "/tips": (context) => TipsPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Heka',
    );
  }
}
