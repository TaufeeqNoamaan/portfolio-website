import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio_website/components/custom_text_button.dart';

import 'package:portfolio_website/components/side_navigation.dart';
import 'package:portfolio_website/pages/large_screen/introduction.dart';
import 'package:portfolio_website/pages/large_screen/contact.dart';
import 'package:portfolio_website/pages/large_screen/section-2.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:portfolio_website/pages/large_screen/section-3.dart';
import 'package:portfolio_website/utilities/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      //   themeProvider.isDarkMode = !themeProvider.isDarkMode;
                    });
                  },
                  icon: Icon(
                    isDarkMode ? Icons.dark_mode : Icons.light_mode,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Switch(
                    value: isDarkMode,
                    onChanged: (value) {
                      setState(() {
                        themeProvider.isDarkMode = value;
                      });
                    },
                    activeColor: Colors.white,
                    activeTrackColor: Colors.grey[300],
                  ),
                ),
              ],
            ),
            floating: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/work');
                    },
                    buttonName: 'Work / Portfolio'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/blog');
                    },
                    buttonName: 'Blog'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/services');
                    },
                    buttonName: 'Services'),
              ),
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              width: screenSize.width,
              height: screenSize.height,
              child: Introduction(),
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height,
              child: Section2(),
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height,
              child: ContactPage(),
            ),
          ]))
        ],
      ),
    );
  }
}


