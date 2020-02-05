import 'package:furniture_store/app/modules/home/models/furniture_model.dart';

FurnitureModel createObject(list, index) {
  FurnitureModel furnitureModel = FurnitureModel(
    image: list[index].image,
    title: list[index].title,
    price: list[index].price,
  );
  return furnitureModel;
}
