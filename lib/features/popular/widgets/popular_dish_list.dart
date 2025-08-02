import 'package:flutter/material.dart';

class PopularDishList extends StatelessWidget {
  final String title;
  final List<String> dishNames;
  final List<String> imageUrls;
  final List<String> dishDetails;
  final List<String> times;
  final List<double> ratings;

  const PopularDishList({
    super.key,
    required this.title,
    required this.dishNames,
    required this.imageUrls,
    required this.dishDetails,
    required this.times,
    required this.ratings,
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
                  fontWeight: FontWeight.w500,
                  color: Colors.blueAccent, // ya apni theme ke mutabiq
                ),
              ),
            ],
          ),
        ),

        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: dishNames.length,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imageUrls[index],
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dishNames[index],
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        dishDetails[index],
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Text(
                            times[index],
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(width: 10),
                          ...List.generate(
                            5,
                            (starIndex) => Icon(
                              starIndex < ratings[index].floor()
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Colors.amber,
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
