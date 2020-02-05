import 'package:flutter/material.dart';

buildEmptyScreen() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Text(
        'No Items',
        style: TextStyle(color: Colors.black45, fontSize: 22),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 16),
      Icon(
        Icons.remove_shopping_cart,
        size: 32,
        color: Colors.black45,
      ),
    ],
  );
}
