import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:furniture_store/app/modules/cart/cart_controller.dart';
import 'package:furniture_store/app/modules/cart/widgets/app_bar.dart';
import 'package:furniture_store/app/modules/cart/widgets/bottom_sheet.dart';
import 'package:furniture_store/app/modules/cart/widgets/empty_screen.dart';
import 'package:furniture_store/app/modules/cart/widgets/items_list.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _cartController = Modular.get<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildCartAppBar(),
      body: Observer(builder: (_) {
        if (_cartController.cartList.length == 0) {
          return buildEmptyScreen();
        } else {
          return buildItemsList();
        }
      }),
      bottomSheet: buildCartBottomSheet(),
    );
  }
}

