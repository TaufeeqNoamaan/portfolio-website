import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/components/cutom_alert_box.dart';

import 'package:portfolio_website/pages/large_screen/section-2.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {


  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  void _showSubmitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => CustomAlertDialog(
        title: 'Form Submitted',
        message: 'The form was submitted successfully.',
        onConfirm: () {
          // Perform any additional actions upon confirmation
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Custom_Heading(heading: 'Contact me'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: SvgPicture.asset(
                        'assets/undraw_profile_re_4a55.svg')), // Replace with your image path
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  labelText: 'Name',
                                  prefixIcon: Icon(Icons.person),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  labelText: 'Email',
                                  prefixIcon: Icon(Icons.email),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  labelText: 'Subject',
                                  prefixIcon: Icon(Icons.subject),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a subject';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16.0),
                              TextFormField(
                                maxLines: 4,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  labelText: 'Message',
                                  prefixIcon: Icon(Icons.message),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your message';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 16.0),
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    // Submit the form
                                    // You can handle the form submission here

                                    _showSubmitDialog(context);
                                  }
                                },
                                child: Text('Submit'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            width: double.maxFinite,
            child: Column(
              children: [
                // * The main section

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Taufeeq Noamaan',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.indigo),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            child: Text(
                              'Work / Portfolio',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onTap: () {
                              Navigator.of(context).pushNamed('/work');
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            child: Text(
                              'Blog',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onTap: () {
                              Navigator.of(context).pushNamed('/work');
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            child: Text(
                              'Services',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onTap: () {
                              Navigator.of(context).pushNamed('/services');
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                //* The build with love section
                Center(
                  child: Row(
                    children: [
                      Text(
                        'Made with ❤️ using',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      GestureDetector(
                        child: Text(
                          'Flutter',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
