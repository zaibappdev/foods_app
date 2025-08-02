import 'package:flutter/material.dart';
import '../widgets/recommended_dish_list.dart';

class RecommendedDishesScreen extends StatefulWidget {
  final double width;

  const RecommendedDishesScreen({super.key, required this.width});

  @override
  State<RecommendedDishesScreen> createState() => _RecommendedDishesScreenState();
}

class _RecommendedDishesScreenState extends State<RecommendedDishesScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecommendedDishList(
          width: widget.width,
          dishNames: const [
            "Chicken Biryani",
            "Zinger Burger",
            "Beef Tikka",
            "Sushi Roll",
            "Cheesy Pizza",
          ],
          imageUrls: List.generate(
            5,
            (index) => 'https://picsum.photos/seed/recommended$index/400/200',
          ),
          dishInfos: const [
            "Spicy & Tender",
            "Crispy & Hot",
            "Charcoal Taste",
            "Fresh Salmon",
            "Extra Cheese",
          ],
        ),
      ],
    );
  }
}
