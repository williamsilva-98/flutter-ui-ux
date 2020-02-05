import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:furniture_store/app/modules/home/shared/utils/create_object.dart';

buildGrid(list) {
  return StaggeredGridView.countBuilder(
    shrinkWrap: true,
    crossAxisCount: 2,
    itemCount: list.length,
    padding: EdgeInsets.all(16),
    physics: ScrollPhysics(),
    itemBuilder: (_, index) {
      return InkWell(
        onTap: () {
          _changePage(list, index);
        },
        child: _buildMainWidget(list, index),
      );
    },
    staggeredTileBuilder: (index) {
      return StaggeredTile.count(1, 1.5);
    },
    mainAxisSpacing: 16,
    crossAxisSpacing: 16,
  );
}

_changePage(list, index) {
  Modular.to.pushNamed('/details/$index', arguments: createObject(list, index));
}

_buildMainWidget(list, index) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: Container(
      padding: EdgeInsets.all(16),
      color: Colors.grey.shade200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildImageHero(list, index),
            SizedBox(height: 32),
            _buildTitle(list, index),
            SizedBox(height: 8),
            _buildPrice(list, index),
          ],
        ),
      ),
    ),
  );
}

_buildImageHero(list, index) {
  return Hero(
    tag: 'image$index',
    child: SizedBox(
      width: 95,
      height: 95,
      child: Image.asset('${list[index].image}'),
    ),
  );
}

_buildTitle(list, index) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      '${list[index].title}',
      style: TextStyle(fontSize: 12),
    ),
  );
}

_buildPrice(list, index) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      '${list[index].price} \$',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
  );
}
