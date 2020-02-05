import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:furniture_store/app/modules/cart/cart_controller.dart';

final _cartController = Modular.get<CartController>();

AppBar buildCartAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    actions: <Widget>[
      GestureDetector(
        onTap: () {
          _cartController.changeVisibility();
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Edit', style: TextStyle(color: Colors.black)),
        ),
      ),
    ],
  );
}
