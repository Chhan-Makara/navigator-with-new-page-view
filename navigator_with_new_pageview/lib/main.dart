import 'package:flutter/material.dart';
import 'package:navigator_with_new_pageview/home_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,

        fontFamily: GoogleFonts.sacramento().fontFamily,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark, //change light or dark mode of theme

      home: HomeView(),
    );
  }
}
