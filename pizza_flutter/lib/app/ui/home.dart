import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/core/core.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Form key = GlobalKey(debugLabel: "key") as Form;

  @override
  Widget build(BuildContext context) {
    var screenSize  = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(
                      Icons.location_on,
                    color: AppColors.kPrimary,
                  ),
                  Text(
                      'Nevada, US',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Icon(
                      Icons.keyboard_arrow_down_outlined,
                  color: AppColors.kPrimary,
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              Row(
                children: <Widget>[
                  const Text(
                      'Order Your Food\nFast and Free',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.2,
                  ),
                  Image.asset(AppAssets.kDeliveryImage),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: screenSize.width * 0.66,
                    height: screenSize.height * 0.05,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        label: const Text('Search'),
                        prefixIcon: const Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.kPrimary,
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.1,
                    width: screenSize.width * 0.3,
                    child: IconButton(
                      onPressed: (){},
                      icon: Image.asset(
                          AppAssets.kFrameImage
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                      'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
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
