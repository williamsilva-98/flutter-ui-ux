import 'package:flutter/material.dart';
import 'package:furniture_store/app/modules/home/shared/screen_model.dart';
import 'package:furniture_store/app/modules/home/utils/beds_list.dart';

class BedsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenModel(
      image: 'images/beds/main_bed.jpg',
      list: bedsList,
    );
  }
}