import 'package:flutter/material.dart';

buildImageHero(furnitureModel, index) {
  return Hero(
    tag: 'image$index',
    child: Container(
      child: Image.asset(
        '${furnitureModel.image}',
        width: 350,
        height: 350,
        fit: BoxFit.contain,
      ),
    ),
  );
}
