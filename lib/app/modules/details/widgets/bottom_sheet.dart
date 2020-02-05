import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:furniture_store/app/modules/cart/cart_controller.dart';
import 'package:furniture_store/app/modules/details/details_controller.dart';

final _detailsController = Modular.get<DetailsController>();
final _cartController = Modular.get<CartController>();

buildBottomSheet(furnitureModel) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text('${furnitureModel.title}', style: TextStyle(fontSize: 18)),
        SizedBox(height: 8),
        Text('Avaliable', style: TextStyle(color: Colors.black45)),
        SizedBox(height: 16),
        Text('${furnitureModel.price} \$',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        SizedBox(height: 16),
        _buildButtonSection(furnitureModel),
      ],
    ),
  );
}

_buildButtonSection(furnitureModel) {
  return Row(
    children: <Widget>[
      _buildFavoriteButton(),
      SizedBox(width: 16),
      _buildButton(furnitureModel),
    ],
  );
}

_buildFavoriteButton() {
  return InkWell(
    onTap: () {
      _detailsController.setFavorite();
    },
    child: Container(
      width: 55,
      height: 55,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 5),
          ]),
      child: Center(
        child: Observer(
          builder: (_) {
            if (_detailsController.isFavorite) {
              return Icon(Icons.favorite, color: Colors.deepOrange);
            } else {
              return Icon(Icons.favorite, color: Colors.black38);
            }
          },
        ),
      ),
    ),
  );
}

_buildButton(furnitureModel) {
  return Expanded(
    child: SizedBox(
      height: 55,
      child: RaisedButton(
        color: Colors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Text('Add To Cart'),
        textColor: Colors.white,
        onPressed: () {
          _cartController.addItem(furnitureModel);
        },
      ),
    ),
  );
}
