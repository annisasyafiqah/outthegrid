import 'package:flutter/material.dart';
import '../styles/colors.dart';
import 'app_text.dart';

class CategoryItem {
  final String name;
  final String imagePath;

  CategoryItem(this.name, this.imagePath);
}

var categoryItem = [
  CategoryItem("Sport", "Assets\sport.png"),
  CategoryItem("Music", "Assets\music.png"),
];

class GroceryFeaturedCard extends StatelessWidget {
  const GroceryFeaturedCard(this.categoryItem,
      {this.color = AppColors.primaryColor});

  final CategoryItem categoryItem;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 105,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 17),
      decoration: BoxDecoration(
          color: color.withOpacity(0.25),
          borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          Image(
            image: AssetImage(categoryItem.imagePath),
          ),
          SizedBox(
            width: 15,
          ),
          AppText(
            text: categoryItem.name,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
