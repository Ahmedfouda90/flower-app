import 'package:flutter/material.dart';
import 'package:untitled/shared/products.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  int price = 0;

  add(Item products) {
    selectedProducts.add(products);
    price += products.price.round();
    notifyListeners(); // this method to make a refresh when i click on any bottom
  }

  remove(Item product) {
    selectedProducts.remove(product);
    price -= product.price.round();
    notifyListeners(); // this method to make a refresh when i click on any bottom
  }
}
