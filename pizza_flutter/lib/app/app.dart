import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/app/ui/intro_screen.dart';

class PizzaApp extends StatelessWidget {
  const PizzaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza',
      themeMode: ThemeMode.system,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.playTextTheme(),
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.playTextTheme(),
      ),
      home: const IntroScreen(),
    );
  }
}