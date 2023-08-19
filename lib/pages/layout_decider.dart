import 'package:flutter/material.dart';
import 'package:portfolio_website/pages/large_screen/home.dart';
import 'package:portfolio_website/pages/medium_screen/mediumScreenHome.dart';
import 'package:portfolio_website/pages/small_screen/smallScreenHome.dart';

class LayoutDecider extends StatelessWidget {
  const LayoutDecider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;
      const double breakpointSmall = 400.0;
      const double breakpointMedium = 800.0;
      const double breakpointLarge = 1200.0;
      if (screenWidth >= breakpointLarge) {
        // Large screen layout
        return HomePage();
      } else if (screenWidth >= breakpointMedium) {
        // Medium screen layout
        return MediumScreenHome();
      } else if (screenWidth >= breakpointSmall) {
        // Small screen layout
        return SmallScreenHome();
      } else {
        // Extra small screen layout
        return const Scaffold(
          body: Center(
            child: Text('We don\'t really know what device your\'e using'),
          ),
        );
      }
    }));
  }
}
