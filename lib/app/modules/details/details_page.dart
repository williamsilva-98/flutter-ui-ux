import 'package:flutter/material.dart';
import 'package:furniture_store/app/modules/details/widgets/app_bar.dart';
import 'package:furniture_store/app/modules/details/widgets/bottom_sheet.dart';
import 'package:furniture_store/app/modules/details/widgets/image_hero.dart';
import 'package:furniture_store/app/modules/home/models/furniture_model.dart';

class DetailsPage extends StatelessWidget {
  final String index;
  final FurnitureModel furnitureModel;

  const DetailsPage({this.furnitureModel, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        children: <Widget>[
          buildImageHero(furnitureModel, index),
        ],
      ),
      bottomSheet: buildBottomSheet(furnitureModel),
    );
  }
}
