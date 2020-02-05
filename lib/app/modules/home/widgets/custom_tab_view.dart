import 'package:flutter/material.dart';
import 'package:furniture_store/app/modules/home/tabs/beds_tab.dart';
import 'package:furniture_store/app/modules/home/tabs/chairs_tab.dart';
import 'package:furniture_store/app/modules/home/tabs/cooking_tab.dart';
import 'package:furniture_store/app/modules/home/tabs/lights_tab.dart';

class CustomTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ChairsTab(),
          LightsTab(),
          BedsTab(),
          CookingTab(),
        ],
      ),
    );
  }
}
