import 'package:flutter/material.dart';
import '../../filter_favourite/screens/filter_favourite_screen.dart';
import '../../popular/screens/popular_screens.dart';
import '../../recommended_dishes/screens/recommended_dishes_screen.dart';
import '../../top_picks/screens/top_picks_screen.dart';
import '../widgets/location_header.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  static const sampleImage = 'https://picsum.photos/200/300';

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: Stack(
          children: [
            // App Bar
            LocationHeader(
              name: "Ali Khan",
              street: "Street 123",
              city: "Karachi",
              imageUrl: "https://picsum.photos/seed/user/200",
            ),

            // Scrollable Content
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopPicksScreen(width: width),
                    RecommendedDishesScreen(width: width),
                    FilterFavouriteScreen(width: width),
                    const PopularScreen(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
