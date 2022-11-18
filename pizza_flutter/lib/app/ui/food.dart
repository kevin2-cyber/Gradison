import 'package:flutter/material.dart';
import 'package:pizza_flutter/core/core.dart';

enum MenuItem {
  large,
  medium,
  small
}

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    String newVal = '';
    return Scaffold(
      backgroundColor: AppColors.kFoodbg,
      body: Container(
        margin: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset(
                          AppAssets.kBackArrowIcon,
                      ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                        AppAssets.kFavouriteIcon,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
                AppAssets.kChickenLarge,
              height: AppConstants.sizeConfig(context, 0.2).height,
              width: AppConstants.sizeConfig(context, 0.6).width,
              fit: BoxFit.fill,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24)
              ),
              child: Container(
                color: Colors.white,
                height: AppConstants.sizeConfig(context, 0.66).height,
                width: AppConstants.sizeConfig(context, 1).width,
                padding: const EdgeInsets.only(top: 16.0, left: 16.0,  right: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                            'Chicken burger',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text('⭐ 4.8 (41 Reviews)'),
                      ],
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.02).height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                            '\$ 22.00',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.kPrimary,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25)
                          ),
                          child: Container(
                            height: AppConstants.sizeConfig(context, 0.05).height,
                            width: AppConstants.sizeConfig(context, 0.3).width,
                            color: AppColors.kFoodbg,
                            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                CircleAvatar(
                                  backgroundColor: AppColors.kPrimary,
                                  child: Icon(
                                      Icons.minimize_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                    '1',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: AppColors.kPrimary,
                                  child: Icon(
                                      Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.05).height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: AppConstants.sizeConfig(context, 0.1).height,
                          width: AppConstants.sizeConfig(context, 0.28).width,
                          child: OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: AppColors.kPrimary,
                              )
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Size',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.kPrimary,
                                      ),
                                    ),
                                    PopupMenuButton<MenuItem>(
                                      iconSize: 16,
                                      icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                        color: AppColors.kPrimary,
                                      ),
                                      onSelected: (value) {
                                        if(value == MenuItem.large) {
                                          setState(() {
                                            newVal = 'Large';
                                          });
                                        } else if(value == MenuItem.medium) {
                                          setState(() {
                                            newVal = 'Medium';
                                          });
                                        } else {
                                          setState(() {
                                            newVal = 'Small';
                                          });
                                        }
                                      },
                                      itemBuilder: (context) => const [
                                        PopupMenuItem(
                                          value: MenuItem.large,
                                          child: Text('Large'),
                                        ),
                                        PopupMenuItem(
                                          value: MenuItem.medium,
                                          child: Text('Medium'),
                                        ),
                                        PopupMenuItem(
                                          value: MenuItem.small,
                                          child: Text('Small'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Text(
                                    'Medium',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: AppColors.kPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: AppConstants.sizeConfig(context, 0.1).height,
                          width: AppConstants.sizeConfig(context, 0.28).width,
                          child: OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: AppColors.kPrimary,
                              )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Energy',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.kPrimary,
                                  ),
                                ),
                                Text(
                                    '554 KCal',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: AppConstants.sizeConfig(context, 0.1).height,
                          width: AppConstants.sizeConfig(context, 0.28).width,
                          child: OutlinedButton(
                            onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: AppColors.kPrimary,
                              )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'Delivery',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.kPrimary,
                                  ),
                                ),
                                Text(
                                    '45 min',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.02).height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                            'About',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.05).height,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                            'Crispy seasoned chicken breast, topped with'
                            '\nmandatory melted cheese and piled onto soft rolls'
                            '\nwith onion, avocado, lettuce, tomato and garlic mayo\n'
                            '(if ordered). ',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.05).height,
                    ),
                    MaterialButton(
                      minWidth: AppConstants.sizeConfig(context, 0.9).width,
                      height: AppConstants.sizeConfig(context, 0.05).height,
                      onPressed: (){},
                      color: AppColors.kPrimary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Text(
                          'Add to Cart',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
