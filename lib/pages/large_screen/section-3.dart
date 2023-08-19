
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/components/custom_progress_bar.dart';
import 'package:portfolio_website/components/custom_text_field.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:portfolio_website/components/linear_progress_indicator.dart';

class WorkPortfolio extends StatelessWidget {
  const WorkPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: 35,
              width: 275,
              child: ProgressBar(skill: 'MERN stack', percentage: 80))
        ],
      ),
    );
  }
}
