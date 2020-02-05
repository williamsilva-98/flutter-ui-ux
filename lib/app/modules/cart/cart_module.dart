import 'package:furniture_store/app/modules/cart/cart_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:furniture_store/app/modules/cart/cart_page.dart';

class CartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CartController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CartPage()),
      ];

  static Inject get to => Inject<CartModule>.of();
}
