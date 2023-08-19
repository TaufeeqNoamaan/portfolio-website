import 'package:flutter/material.dart';

class SideNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      bottom: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
        child: Container(
          width: 80,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.menu, color: Colors.white),
              SizedBox(height: 16),
              Icon(Icons.menu, color: Colors.white),
              SizedBox(height: 16),
              Icon(Icons.menu, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}