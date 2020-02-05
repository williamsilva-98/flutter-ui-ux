import 'package:flutter/material.dart';

buildBuyButton() {
  return SizedBox(
    height: 55,
    child: RaisedButton(
      color: Colors.deepOrange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Text('Buy'),
      textColor: Colors.white,
      onPressed: () {},
    ),
  );
}
