import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 16, 16, 16),
      child: TabBar(
        indicatorColor: Colors.transparent,
        labelColor: Colors.black.withOpacity(0.8),
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontFamily: 'Montserrat',
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 16,
          fontFamily: 'Montserrat',
        ),
        isScrollable: true,
        tabs: <Widget>[
          Tab(
            text: 'Chairs',
          ),
          Tab(
            text: 'Lighting',
          ),
          Tab(
            text: 'Beds',
          ),
          Tab(
            text: 'Cooking',
          ),
        ],
      ),
    );
  }
}
