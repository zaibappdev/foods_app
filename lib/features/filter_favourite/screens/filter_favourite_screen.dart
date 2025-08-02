import 'package:flutter/material.dart';
import '../widgets/horizontal_filter_list.dart';

class FilterFavouriteScreen extends StatefulWidget {
  final double width;

  const FilterFavouriteScreen({super.key, required this.width});

  @override
  State<FilterFavouriteScreen> createState() => _FilterFavouriteScreenState();
}

class _FilterFavouriteScreenState extends State<FilterFavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HorizontalFilterList(
          title: "Filter Your Favourite",
          width: widget.width,
          filterNames: const ["Fast Food", "BBQ", "Desi", "Drinks", "Snacks"],
          imageUrls: List.generate(
            5,
            (index) => 'https://picsum.photos/seed/filter$index/60',
          ),
        ),
      ],
    );
  }
}
