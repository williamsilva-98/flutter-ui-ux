import 'package:flutter/material.dart';
import 'package:furniture_store/app/modules/home/widgets/custom_app_bar.dart';
import 'package:furniture_store/app/modules/home/widgets/custom_drawer.dart';
import 'package:furniture_store/app/modules/home/widgets/custom_tab_bar.dart';
import 'package:furniture_store/app/modules/home/widgets/custom_tab_view.dart';
import 'package:furniture_store/app/modules/home/widgets/custom_title.dart';

class HomePage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(_scaffoldKey),
            CustomTitle(),
            CustomTabBar(),
            CustomTabView(),
          ],
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
