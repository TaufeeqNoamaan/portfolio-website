import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Section2 extends StatefulWidget {
  const Section2({super.key});

  @override
  State<Section2> createState() => _Section2State();
}

class _Section2State extends State<Section2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Custom_Heading(heading: 'About me',),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 575,
                  width: 575,
                  child: SvgPicture.asset(
                      'assets/undraw_programming_re_kg9v.svg')),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 500,
                    child: Text(
                      'Welcome to my portfolio website! I\'m a Flutter developer and machine learning enthusiast studying at Muffakham Jah College of Engineering and Technology (MJCET) in Hyderabad. With expertise in PostgreSQL, MERN stack, Rust, Solidity, TensorFlow, and PyTorch, I showcase impactful projects that blend the artistry of Flutter with the power of machine learning.',
                      style: GoogleFonts.openSans(
                          // color: Colors.black87,
                          fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 500,
                    child: Text(
                      'Let\'s embark on an exciting journey together through Flutter development and the fascinating world of machine learning. Feel free to reach out through the contact section for collaborations or inquiries. ',
                      style: GoogleFonts.openSans(
                          //color: Colors.black87,
                          fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Let\'s bring ideas to life and make a difference!',
                      style: GoogleFonts.openSans(
                          //color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class Custom_Heading extends StatelessWidget {
  final String heading;
  
  const Custom_Heading({
    super.key, required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            heading,
            style: GoogleFonts.lato(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              // color: Colors.black
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              width: 70.5, child: Divider(color: Colors.blue, thickness: 3.5)),
        ],
      ),
    );
  }
}
