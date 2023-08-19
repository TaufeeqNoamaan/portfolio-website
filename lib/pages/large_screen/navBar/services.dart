import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/components/custom_card.dart';
import 'package:portfolio_website/pages/large_screen/section-2.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Custom_Heading(heading: 'Services'),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  Custom_Card(),
                  Custom_Card(),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Custom_Card(),
                  Custom_Card(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

