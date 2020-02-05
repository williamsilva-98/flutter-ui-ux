// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on _CartBase, Store {
  final _$isVisibleAtom = Atom(name: '_CartBase.isVisible');

  @override
  bool get isVisible {
    _$isVisibleAtom.context.enforceReadPolicy(_$isVisibleAtom);
    _$isVisibleAtom.reportObserved();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.context.conditionallyRunInAction(() {
      super.isVisible = value;
      _$isVisibleAtom.reportChanged();
    }, _$isVisibleAtom, name: '${_$isVisibleAtom.name}_set');
  }

  final _$cartListAtom = Atom(name: '_CartBase.cartList');

  @override
  ObservableList<FurnitureModel> get cartList {
    _$cartListAtom.context.enforceReadPolicy(_$cartListAtom);
    _$cartListAtom.reportObserved();
    return super.cartList;
  }

  @override
  set cartList(ObservableList<FurnitureModel> value) {
    _$cartListAtom.context.conditionallyRunInAction(() {
      super.cartList = value;
      _$cartListAtom.reportChanged();
    }, _$cartListAtom, name: '${_$cartListAtom.name}_set');
  }

  final _$totalPriceAtom = Atom(name: '_CartBase.totalPrice');

  @override
  double get totalPrice {
    _$totalPriceAtom.context.enforceReadPolicy(_$totalPriceAtom);
    _$totalPriceAtom.reportObserved();
    return super.totalPrice;
  }

  @override
  set totalPrice(double value) {
    _$totalPriceAtom.context.conditionallyRunInAction(() {
      super.totalPrice = value;
      _$totalPriceAtom.reportChanged();
    }, _$totalPriceAtom, name: '${_$totalPriceAtom.name}_set');
  }

  final _$_CartBaseActionController = ActionController(name: '_CartBase');

  @override
  dynamic addTotalPrice(dynamic furnitureModel) {
    final _$actionInfo = _$_CartBaseActionController.startAction();
    try {
      return super.addTotalPrice(furnitureModel);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeTotalPrice(dynamic index) {
    final _$actionInfo = _$_CartBaseActionController.startAction();
    try {
      return super.removeTotalPrice(index);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeVisibility() {
    final _$actionInfo = _$_CartBaseActionController.startAction();
    try {
      return super.changeVisibility();
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addItem(FurnitureModel furnitureModel) {
    final _$actionInfo = _$_CartBaseActionController.startAction();
    try {
      return super.addItem(furnitureModel);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(dynamic index) {
    final _$actionInfo = _$_CartBaseActionController.startAction();
    try {
      return super.removeItem(index);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }
}
