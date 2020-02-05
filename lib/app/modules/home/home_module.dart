import 'package:furniture_store/app/modules/cart/cart_controller.dart';
import 'package:furniture_store/app/modules/cart/cart_page.dart';
import 'package:furniture_store/app/modules/details/details_controller.dart';
import 'package:furniture_store/app/modules/details/details_page.dart';
import 'package:furniture_store/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:furniture_store/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => DetailsController()),
        Bind((i) => CartController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/cart', child: (_, args) => CartPage()),
        Router(
          '/details/:index',
          child: (_, args) => DetailsPage(
            furnitureModel: args.data,
            index: args.params['index'],
          ),
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
