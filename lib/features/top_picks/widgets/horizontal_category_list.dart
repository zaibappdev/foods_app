import 'package:flutter/material.dart';

class HorizontalCategoryList extends StatelessWidget {
  final String title;
  final List<String> categoryNames;
  final List<String> imageUrls;
  final double width;

  const HorizontalCategoryList({
    super.key,
    required this.title,
    required this.categoryNames,
    required this.imageUrls,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "View All",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: width * 0.33,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryNames.length,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      imageUrls[index],
                      height: width * 0.2,
                      width: width * 0.2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(categoryNames[index]),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
