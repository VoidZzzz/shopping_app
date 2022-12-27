import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class GnavBar extends StatefulWidget {
  const GnavBar({Key? key}) : super(key: key);

  @override
  State<GnavBar> createState() => _GnavBarState();
}

class _GnavBarState extends State<GnavBar> {
  @override
  Widget build(BuildContext context) {
    return GNav(
        color: Colors.grey[800],
        activeColor: Colors.deepOrange,
        gap: 6,
        tabBackgroundColor: Colors.grey[900]!,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        tabs: const [
          GButton(
            icon: Icons.home_filled,
            text: 'Home',
          ),
          GButton(
            icon: Icons.favorite,
            text: 'favourites',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Orders',
          ),
          GButton(
            icon: Icons.recommend_outlined,
            text: 'recommended',
          ),
        ]);
  }
}
