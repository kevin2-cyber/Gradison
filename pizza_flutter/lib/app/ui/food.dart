import 'package:flutter/material.dart';
import 'package:pizza_flutter/core/core.dart';

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      children: const [
                        Text(
                            '\$ 22.00',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.kPrimary,
                          ),
                        )
                      ],
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
