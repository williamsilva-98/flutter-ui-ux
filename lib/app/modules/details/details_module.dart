import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:furniture_store/app/modules/cart/cart_page.dart';
import 'package:furniture_store/app/modules/details/details_controller.dart';

class DetailsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailsController()),
      ];

  @override
  List<Router> get routers => [
    Router('/cart', child: (_, args) => CartPage()),
      ];

  static Inject get to => Inject<DetailsModule>.of();
}