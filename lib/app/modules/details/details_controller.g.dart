// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailsController on _DetailsControllerBase, Store {
  final _$cartAtom = Atom(name: '_DetailsControllerBase.cart');

  @override
  int get cart {
    _$cartAtom.context.enforceReadPolicy(_$cartAtom);
    _$cartAtom.reportObserved();
    return super.cart;
  }

  @override
  set cart(int value) {
    _$cartAtom.context.conditionallyRunInAction(() {
      super.cart = value;
      _$cartAtom.reportChanged();
    }, _$cartAtom, name: '${_$cartAtom.name}_set');
  }

  final _$isFavoriteAtom = Atom(name: '_DetailsControllerBase.isFavorite');

  @override
  bool get isFavorite {
    _$isFavoriteAtom.context.enforceReadPolicy(_$isFavoriteAtom);
    _$isFavoriteAtom.reportObserved();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.context.conditionallyRunInAction(() {
      super.isFavorite = value;
      _$isFavoriteAtom.reportChanged();
    }, _$isFavoriteAtom, name: '${_$isFavoriteAtom.name}_set');
  }

  final _$_DetailsControllerBaseActionController =
      ActionController(name: '_DetailsControllerBase');

  @override
  dynamic addItem() {
    final _$actionInfo = _$_DetailsControllerBaseActionController.startAction();
    try {
      return super.addItem();
    } finally {
      _$_DetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFavorite() {
    final _$actionInfo = _$_DetailsControllerBaseActionController.startAction();
    try {
      return super.setFavorite();
    } finally {
      _$_DetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
