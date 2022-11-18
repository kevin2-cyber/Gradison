import 'package:flutter/material.dart';
import 'package:pizza_flutter/app/ui/food.dart';
import 'package:pizza_flutter/core/core.dart';

import '../../widgets/categories.card.dart';
import '../../widgets/grid.view.card.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
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
              height: AppConstants.sizeConfig(context, 0.01).height,
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
                  width: AppConstants.sizeConfig(context, 0.2).width,
                ),
                Image.asset(AppAssets.kDeliveryImage),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: AppConstants.sizeConfig(context, 0.66).width,
                  height: AppConstants.sizeConfig(context, 0.05).height,
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
                  height: AppConstants.sizeConfig(context, 0.1).height,
                  width: AppConstants.sizeConfig(context, 0.3).width,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(AppAssets.kFilterIcon),
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
              height: AppConstants.sizeConfig(context, 0.01).height,
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
            SizedBox(
              height: AppConstants.sizeConfig(context, 0.01).height,
            ),
            SizedBox(
              height: AppConstants.sizeConfig(context, 0.48).height,
              width: AppConstants.sizeConfig(context, 1).width,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Food()));
                    },
                    child: GridViewCard(
                      image: AppAssets.kChickenBurger,
                      title: 'Chicken Burger',
                      text: '200 gr chicken + cheese\nLettuce + tomato',
                      amount: '22.00',
                    ),
                  ),
                  GridViewCard(
                    image: AppAssets.kCheeseBurger,
                    title: 'Cheese Burger',
                    text: '200 gr meat + Lettuce\ncheese + onion + tomato',
                    amount: '25.00',
                  ),
                  GridViewCard(
                    image: AppAssets.kChickenBurger,
                    title: 'Chicken Burger',
                    text: '200 gr chicken + cheese\nLettuce + tomato',
                    amount: '22.00',
                  ),
                  GridViewCard(
                    image: AppAssets.kCheeseBurger,
                    title: 'Cheese Burger',
                    text: '200 gr meat + Lettuce\ncheese + onion + tomato',
                    amount: '25.00',
                  ),
                  GridViewCard(
                    image: AppAssets.kChickenBurger,
                    title: 'Chicken Burger',
                    text: '200 gr chicken + cheese\nLettuce + tomato',
                    amount: '22.00',
                  ),
                  GridViewCard(
                    image: AppAssets.kCheeseBurger,
                    title: 'Cheese Burger',
                    text: '200 gr meat + Lettuce\ncheese + onion + tomato',
                    amount: '25.00',
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
