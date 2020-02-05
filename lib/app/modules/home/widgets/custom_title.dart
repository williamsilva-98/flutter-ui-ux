import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Products',
        style: TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 32,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
