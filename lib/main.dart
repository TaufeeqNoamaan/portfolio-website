import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_website/pages/large_screen/home.dart';

import 'package:portfolio_website/pages/large_screen/contact.dart';
import 'package:portfolio_website/pages/large_screen/navBar/blog_page.dart';
import 'package:portfolio_website/pages/large_screen/navBar/services.dart';
import 'package:portfolio_website/pages/large_screen/navBar/work-portfolio.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio_website/pages/layout_decider.dart';
import 'package:portfolio_website/pages/loading_screen.dart';
import 'package:portfolio_website/utilities/theme.dart';
import 'package:portfolio_website/utilities/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Future<void> loadingDuration =
        Future.delayed(const Duration(seconds: 3));

    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Taufeeq Noamaan',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: FutureBuilder(
          future: loadingDuration,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return LoadingScreen();
            } else {
              return LayoutDecider();
            }
          },
        ),
        routes: {
          '/contact': (context) => ContactPage(),
          '/services': (context) => ServicesPage(),
          '/work': (context) => WorkPage(),
          '/home': (context) => HomePage(),
          '/blog':(context) => BlogPage(),
        },
      ),
    );
  }
}
