import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thai_hotline_app/views/splash_screen_ui.dart';
void main() {
  runApp(
    thaiHotlineApp(),
  );
}

class thaiHotlineApp extends StatefulWidget {
  const thaiHotlineApp({super.key});

  @override
  State<thaiHotlineApp> createState() => _thaiHotlineAppState();
}

class _thaiHotlineAppState extends State<thaiHotlineApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),

    );
  }
}