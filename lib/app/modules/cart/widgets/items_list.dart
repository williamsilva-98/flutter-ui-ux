import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:furniture_store/app/modules/cart/cart_controller.dart';

final _cartController = Modular.get<CartController>();

buildItemsList() {
  return ListView.builder(
    itemCount: _cartController.cartList.length,
    itemBuilder: (_, index) {
      return ListTile(
        title: Text('${_cartController.cartList[index].title}'),
        subtitle: Text(
          '${_cartController.cartList[index].price} \$',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Container(
          width: 50,
          height: 50,
          child: Image.asset(
            '${_cartController.cartList[index].image}',
          ),
        ),
        trailing: Observer(
          builder: (_) {
            return Visibility(
              visible: _cartController.isVisible,
              child: IconButton(
                icon: Icon(
                  Icons.remove_circle,
                  color: Colors.deepOrange,
                ),
                onPressed: () {
                  _cartController.removeItem(index);
                },
              ),
            );
          },
        ),
      );
    },
  );
}
