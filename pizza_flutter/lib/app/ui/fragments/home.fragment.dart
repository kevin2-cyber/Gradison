import 'package:flutter/material.dart';
import 'package:pizza_flutter/core/core.dart';

import '../../widgets/categories.card.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    var kSpacingX = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0),
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
              height: kSpacingX.height * 0.01,
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
                  width: kSpacingX.width * 0.2,
                ),
                Image.asset(AppAssets.kDeliveryImage),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: kSpacingX.width * 0.66,
                  height: kSpacingX.height * 0.05,
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
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: kSpacingX.height * 0.1,
                  width: kSpacingX.width * 0.3,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(AppAssets.kFilterICon),
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
            SizedBox(
              height: kSpacingX.height * 0.01,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CategoryCard(
                    bgColor: AppColors.kPrimary,
                    asset: '🍔',
                    title: 'Burger',
                    textColor: Colors.white,
                  ),
                  CategoryCard(
                    bgColor: Colors.white,
                    asset: '🍕',
                    title: 'Pizza',
                    textColor: Colors.black,
                  ),
                  CategoryCard(
                    bgColor: Colors.white,
                    asset: '🌭',
                    title: 'Sandwich',
                    textColor: Colors.black,
                  ),
                  CategoryCard(
                    bgColor: Colors.white,
                    asset: '🍔',
                    title: 'Burger',
                    textColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
