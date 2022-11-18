import 'package:flutter/material.dart';

import '../../core/core.dart';

class GridViewCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  final String amount;
  const GridViewCard({
    super.key,
    required this.image,
    required this.title,
    required this.text,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: 200,
        child: Stack(
          children: [
            Positioned(
              child: Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: AppConstants.sizeConfig(context, 0.03).height,
              left: AppConstants.sizeConfig(context, 0.12).width,
              child: Image.asset(image),
            ),
            Positioned(
              top: AppConstants.sizeConfig(context, 0.109).height,
              left: AppConstants.sizeConfig(context, 0.05).width,
              child: Column(
                children:  [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: AppConstants.sizeConfig(context, 0.17).height,
              left: AppConstants.sizeConfig(context, 0.03).width,
              child: Text(
                '\$ $amount',
                style: const TextStyle(
                  color: AppColors.kPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: AppConstants.sizeConfig(context, 0.17).height,
              left: AppConstants.sizeConfig(context, 0.35).width,
              child: const CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.kPrimary,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
