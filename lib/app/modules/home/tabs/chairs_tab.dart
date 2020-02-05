import 'package:flutter/material.dart';
import 'package:furniture_store/app/modules/home/shared/screen_model.dart';
import 'package:furniture_store/app/modules/home/utils/chairs_list.dart';

class ChairsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenModel(
      image: 'images/chairs/main_chair.jpg',
      list: chairsList,
    );
  }
}
