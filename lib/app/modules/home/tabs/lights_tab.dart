import 'package:flutter/material.dart';
import 'package:furniture_store/app/modules/home/shared/screen_model.dart';
import 'package:furniture_store/app/modules/home/utils/lights_list.dart';

class LightsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenModel(
      image: 'images/lights/main_light.jpg',
      list: lightsList,
    );
  }
}