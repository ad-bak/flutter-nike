import 'package:flutter/material.dart';
import 'package:nike/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoesShop = [
    const Shoe(
      name: "Dunk High",
      price: "120",
      description: "The Dunk High arrived in 1985",
      imagePath: "assets/dunk.png",
    ),
    const Shoe(
      name: "Air Jordan 1 Mid",
      price: "220",
      description: "The Air Jordan 1 Mid SE maintains the timeless appeal",
      imagePath: "assets/jordan.png",
    ),
    const Shoe(
      name: "Air Force 1",
      price: "150",
      description: "Nike's most iconic and enduring silhouettes",
      imagePath: "assets/force.png",
    ),
    const Shoe(
      name: "Cortez",
      price: "120",
      description: "This is the first track shoe created by Nike",
      imagePath: "assets/cortez.png",
    )
  ];

  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoesShop;
  }

  List<Shoe> getCartList() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
