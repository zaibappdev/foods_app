import 'package:flutter/material.dart';

class HorizontalFilterList extends StatelessWidget {
  final String title;
  final List<String> filterNames;
  final List<String> imageUrls;
  final double width;

  const HorizontalFilterList({
    super.key,
    required this.title,
    required this.filterNames,
    required this.imageUrls,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 16,
            top: 20,
          ),
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
                'View All',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: width * 0.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filterNames.length,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  Container(
                    height: width * 0.18,
                    width: width * 0.18,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(filterNames[index]),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
