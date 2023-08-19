import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:hovering/hovering.dart';

import 'package:url_launcher/url_launcher.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  void openPDF() async {
    const url =
        'https://drive.google.com/file/d/1tO2Su77K2KXxV0UL0qH87k4zXRHFK9Ku/view?usp=sharing'; // Replace with the actual PDF URL
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 100, 20, 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey there,',
                      style: GoogleFonts.fredokaOne(
                          textStyle: const TextStyle(
                              color: Colors.blueAccent, fontSize: 56)),
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My name is',
                          style: GoogleFonts.fredokaOne(
                              textStyle: const TextStyle(
                                  color: Colors.blueAccent, fontSize: 56)),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Taufeeq Noamaan',
                          style: GoogleFonts.courgette(
                              textStyle: const TextStyle(
                                  //  color: Colors.black,
                                  fontSize: 56)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    AnimatedTextKit(
                      totalRepeatCount: 10,
                      animatedTexts: [
                        TypewriterAnimatedText('Flutter Developer',
                            textStyle: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    //  color: Colors.black54,
                                    fontSize: 48)),
                            speed: const Duration(milliseconds: 100)),
                        TypewriterAnimatedText(
                          'Machine Learning',
                          speed: const Duration(milliseconds: 100),
                          textStyle: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  //  color: Colors.black54,
                                  fontSize: 48)),
                        ),
                        TypewriterAnimatedText(
                          'App development',
                          speed: const Duration(milliseconds: 100),
                          textStyle: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  //  color: Colors.black54,
                                  fontSize: 48)),
                        ),
                        TypewriterAnimatedText(
                          'DevOps',
                          speed: const Duration(milliseconds: 100),
                          textStyle: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  //color: Colors.black54,
                                  fontSize: 48)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    HoverButton(
                        height: 40,
                        minWidth: 160,
                        animationDuration: const Duration(milliseconds: 500),
                        color: Color.fromARGB(255, 50, 74, 225),
                        hoverColor: Colors.indigo,
                        child: const Text(
                          'Resume',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        onpressed: () {
                          openPDF();
                        }),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Connect with me',
                      style: GoogleFonts.merriweather(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: Image.asset(
                              'assets/5282542_linkedin_network_social network_linkedin logo_icon.png',
                              //color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: SizedBox(
                            height: 26,
                            width: 26,
                            child: SvgPicture.asset(
                              'assets/medium.svg',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: SizedBox(
                            height: 26,
                            width: 26,
                            child: Image.asset('assets/icons8-github-96.png'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //SvgPicture.asset('img/myAvatar.svg')
              Expanded(child: Image.asset('img/myAvatar.png')),
            ],
          ),
        ),
      ),
    );
  }
}
