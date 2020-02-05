import 'package:flutter/material.dart';
import 'package:furniture_store/app/modules/home/models/furniture_model.dart';
import 'package:furniture_store/app/modules/home/shared/widgets/grid_model.dart';
import 'package:furniture_store/app/modules/home/shared/widgets/image_model.dart';

class ScreenModel extends StatelessWidget {
  final String image;
  final List<FurnitureModel> list;

  const ScreenModel({this.image, this.list});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        buildImageModel(image),
        buildGrid(list),
      ],
    );
  }
}
