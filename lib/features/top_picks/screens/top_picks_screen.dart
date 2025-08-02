import 'package:flutter/material.dart';
import '../widgets/horizontal_category_list.dart';

class TopPicksScreen extends StatefulWidget {
  final double width;

  const TopPicksScreen({super.key, required this.width});

  @override
  State<TopPicksScreen> createState() => _TopPicksScreenState();
}

class _TopPicksScreenState extends State<TopPicksScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HorizontalCategoryList(
          title: "Top Picks For You",
          width: widget.width,
          categoryNames: const ["Burger", "Pizza", "Sushi", "Tacos", "Salad"],
          imageUrls: List.generate(
            5,
            (index) => 'https://picsum.photos/seed/top$index/100/100',
          ),
        ),
      ],
    );
  }
}
