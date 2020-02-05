import 'package:flutter/material.dart';
import 'package:furniture_store/app/modules/home/shared/screen_model.dart';
import 'package:furniture_store/app/modules/home/utils/cooking_list.dart';

class CookingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenModel(
      image: 'images/cooking/main_cooking.jpg',
      list: cookingList,
    );
  }
}