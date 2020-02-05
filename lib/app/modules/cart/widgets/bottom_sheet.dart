import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:furniture_store/app/modules/cart/cart_controller.dart';
import 'package:furniture_store/app/modules/cart/widgets/buy_button.dart';

final _cartController = Modular.get<CartController>();

buildCartBottomSheet() {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Total Price:', style: TextStyle(fontSize: 18)),
            Observer(
              builder: (_) {
                return Text(
                  '${_cartController.totalPrice} \$',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Delivery',
                style: TextStyle(color: Colors.black45, fontSize: 14)),
            Text('Free', style: TextStyle(color: Colors.black45, fontSize: 14)),
          ],
        ),
        SizedBox(height: 32),
        buildBuyButton(),
      ],
    ),
  );
}




