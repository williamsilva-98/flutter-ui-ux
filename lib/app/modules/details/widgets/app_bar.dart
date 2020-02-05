import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:furniture_store/app/modules/details/details_controller.dart';
import 'package:furniture_store/app/shared/cart_item.dart';

final _detailsController = Modular.get<DetailsController>();

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.all(16),
        child: buildCartItem(),
      )
    ],
  );
}
