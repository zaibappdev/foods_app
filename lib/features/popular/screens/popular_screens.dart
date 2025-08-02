import 'package:flutter/material.dart';
import '../widgets/popular_dish_list.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PopularDishList(
          title: "Popular",
          dishNames: const [
            "Beef Biryani",
            "Grilled Chicken",
            "Zinger Wrap",
            "Paneer Tikka",
            "Fried Fish",
          ],
          imageUrls: List.generate(
            5,
            (index) => 'https://picsum.photos/seed/popular$index/80',
          ),
          dishDetails: const [
            "Spicy layered rice",
            "Served with garlic dip",
            "Wrapped & loaded",
            "Indian-style delight",
            "Crispy & tender",
          ],
          times: const ["20 min", "25 min", "15 min", "30 min", "18 min"],
          ratings: const [4.0, 4.5, 3.5, 4.0, 5.0],
        ),
      ],
    );
  }
}
