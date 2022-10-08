import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/core/app_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Form key = GlobalKey(debugLabel: "key") as Form;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Icon(
                      Icons.location_on,
                    color: AppColors.kPrimary,
                  ),
                  Text(
                      'Nevada, US',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  const Icon(
                      Icons.keyboard_arrow_down_outlined,
                  color: AppColors.kPrimary,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                      'Order Your Food\nFast and Free',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Image.asset('assets/images/delivery.png'),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.kPrimary,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white30,
                          )
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset('assets/images/frame.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
