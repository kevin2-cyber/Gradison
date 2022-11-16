import 'package:flutter/material.dart';
import 'package:pizza_flutter/core/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final Color bgColor;
  final String asset;
  final String title;
  const CategoryCard({Key? key, required this.bgColor, required this.asset, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 5.0, color: AppColors.kPrimary),
        ),
        child: Row(
          children: [
            Image.asset(asset),
            Text(title),
          ],
        ),
      ),
    );
  }
}
