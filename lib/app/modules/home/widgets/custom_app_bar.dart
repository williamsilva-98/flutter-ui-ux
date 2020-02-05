import 'package:flutter/material.dart';
import 'package:furniture_store/app/shared/cart_item.dart';

class CustomAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  CustomAppBar(this.scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildMenuItem(scaffoldKey),
          buildCartItem(),
        ],
      ),
    );
  }
}

_buildMenuItem(scaffoldKey) {
  return InkWell(
    child: Opacity(
      opacity: 0.8,
      child: Image.asset(
        'images/app_bar/menu.png',
        width: 25,
        height: 25,
      ),
    ),
    onTap: () {
      scaffoldKey.currentState.openDrawer();
    },
  );
}
