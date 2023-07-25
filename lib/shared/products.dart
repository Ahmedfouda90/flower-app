import 'package:flutter/material.dart';


class Item {
  String imagePath;
  double price;
  String name;
  String location;

  Item(
      {required this.imagePath, required this.price, required this.name, this.location = 'main branch',});
}

final List<Item> items = [
  Item(name: 'product 1', price: 112.99, imagePath: "assets/images/1.webp"),
  Item(name: 'product 2', price: 212.99, imagePath: "assets/images/2.webp"),
  Item(name: 'product 3', price: 312.99, imagePath: "assets/images/3.webp"),
  Item(name: 'product 4', price: 412.99, imagePath: "assets/images/4.webp"),
  Item(name: 'product 5', price: 512.99, imagePath: "assets/images/5.webp"),
  Item(name: 'product 6', price: 612.99, imagePath: "assets/images/6.webp"),
  Item(name: 'product 7', price: 712.99, imagePath: "assets/images/7.webp"),
  Item(name: 'product 8', price: 12.99, imagePath: "assets/images/8.webp"),
];

