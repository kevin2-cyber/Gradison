import 'package:flutter/material.dart';
import 'package:pizza_flutter/core/constants.dart';
import '/core/core.dart';
import 'home.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: const ColorFilter.mode(Colors.black38, BlendMode.darken),
            image: AssetImage(
                AppAssets.kBackImage,
            ),
            fit: BoxFit.fill,
          )
        ),
        child: Stack(
          children: [
            Positioned(
              top: AppConstants.sizeConfig(context, 0.88).height,
              left: AppConstants.sizeConfig(context, 0.47).width,
              child: const Text(
                  'Skip',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 15,
                ),
              ),
            ),
            const Positioned(
              top: 400,
              left: 30,
              child: Text(
                  'Find and Get \nYour best Food',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Positioned(
              top: 500,
              left: 30,
              child: Text(
                'Find the most delicious food\nwith the best quality and delivery here',
                style: TextStyle(
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
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()));
          },
          child: const Icon(Icons.arrow_forward_ios, color: Colors.white,),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
