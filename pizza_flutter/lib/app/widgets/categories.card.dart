import 'package:flutter/material.dart';
import 'package:pizza_flutter/core/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final Color bgColor;
  final String asset;
  final String title;
  final Color textColor;
  const CategoryCard({Key? key, required this.bgColor, required this.asset, required this.title, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.height * 0.05,
      child: Card(
        color: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: AppColors.kPrimary),
          ),
          child: Row(
            children: [
              Text(
                  asset,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                  title,
                style: TextStyle(
                  fontSize: 20,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
