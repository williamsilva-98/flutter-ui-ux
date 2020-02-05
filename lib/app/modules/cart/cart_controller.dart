import 'package:furniture_store/app/modules/home/models/furniture_model.dart';
import 'package:mobx/mobx.dart';

part 'cart_controller.g.dart';

class CartController = _CartBase with _$CartController;

abstract class _CartBase with Store {
  @observable
  bool isVisible = false;

  @observable
  ObservableList<FurnitureModel> cartList =
      [].asObservable().cast<FurnitureModel>();

  @observable
  double totalPrice = 0.0;

  @action
  addTotalPrice(furnitureModel) {
    totalPrice += furnitureModel.price;
  }

  @action
  removeTotalPrice(index) {
    totalPrice -= cartList[index].price;
  }

  @action
  void changeVisibility() => isVisible = !isVisible;

  @action
  addItem(FurnitureModel furnitureModel) {
    addTotalPrice(furnitureModel);
    cartList.add(furnitureModel);
  }

  @action
  removeItem(index) {
    removeTotalPrice(index);
    cartList.removeAt(index);
  }
}
