import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza_flutter/core/app_colors.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
            image: AssetImage(
                "assets/images/back.jpg",
            ),
            fit: BoxFit.fill,
          )
        ),
        child: Stack(
          children: [
            Positioned(
              top: 800,
              left: 185,
              child: Text(
                  'Skip',
                style: GoogleFonts.montserrat(
                  color: Colors.white54,
                  fontSize: 15,
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 30,
              child: Text(
                  'Find and Get \nYour best Food',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: 30,
              child: Text(
                'Find the most delicious food\nwith the best quality and delivery here',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 80.0),
        child: FloatingActionButton(
          backgroundColor: AppColors.kPrimary,
          onPressed: () {},
          child: const Icon(Icons.arrow_forward_ios, color: Colors.white,),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
