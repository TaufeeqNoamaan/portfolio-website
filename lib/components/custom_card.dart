import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom_Card extends StatelessWidget {
  
  const Custom_Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 400,
      child: Card(
        elevation: 25,
        shadowColor: const Color.fromARGB(255, 4, 34, 203),
        surfaceTintColor: Colors.red, 
        color: Colors.white70,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.developer_board,
                size: 50,
                color: Colors.indigo,
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              'Service -1',
              style: GoogleFonts.openSans(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
              ),
            )
          ],
        ),
      ),
    );
  }
}
