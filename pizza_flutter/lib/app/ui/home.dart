import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/core/app_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(
                  Icons.location_on,
                color: AppColors.kPrimary,
              ),
              Text(
                  'Nevada, US',
                style: GoogleFonts.montserrat(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
