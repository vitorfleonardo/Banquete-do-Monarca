import 'package:banquete_do_monarca/data/dummy_data.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = dummyProducts;

  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  bool cartVazio() {
    bool cartVazio;
    if (cartItems.isEmpty) {
      cartVazio = true;
      return cartVazio;
    } else {
      cartVazio = false;
      return cartVazio;
    }
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][2]);
    }
    return totalPrice.toStringAsFixed(2);
  }

  String calculatePoints() {
    int totalPoints = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPoints += int.parse(cartItems[i][3]);
    }
    return totalPoints.toStringAsFixed(0);
  }
}
