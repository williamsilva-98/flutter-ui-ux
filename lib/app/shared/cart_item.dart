import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:furniture_store/app/modules/cart/cart_controller.dart';

final _cartController = Modular.get<CartController>();

buildCartItem() {
  return GestureDetector(
    onTap: () {
      Modular.to.pushNamed('/cart');
    },
    child: Observer(
      builder: (_) {
        return Badge(
          showBadge: _cartController.cartList.length == 0 ? false : true,
          badgeContent: Text(
            _cartController.cartList.length.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              'images/app_bar/cart.png',
              width: 25,
              height: 25,
            ),
          ),
        );
      },
    ),
  );
}