import 'package:flutter/material.dart';
import 'package:rarefinds/models/product.dart';

class Shop extends ChangeNotifier{
  // sale products
  final List<Product> _shop=[
    //pro1
    Product(name: "E.D.I.T.H Glass", 
    price: 299.00, 
    description: '''Fake Augmented Reality Glasses: Style and Simplicity,UV Protection''', 
    imagePath: 'assets/glass.jpg',
    ),

    //pro2
    Product(name: "Shadowblend Hoodie", 
    price: 1699.00, 
    description: '''Simple style, maximum comfort. Soft blend of cotton and polyester.''', 
    imagePath: 'assets/hoodie.jpeg',
    ),

    //pro3
    Product(name: "Luminastride Sneakers", 
    price: 1499.99, 
    description: '''Vibrant style with bold and bright hues. Cloud-like comfort with a cushioned insole.''', 
    imagePath: 'assets/shoes.jpg',
    ),

    //pro4
    Product(name: "Timex Analog Black", 
    price: 599.99, 
    description: '''Classic elegance meets functionality. Large numerals, day/date display, water-resistant.''', 
    imagePath: 'assets/watch.jpg',
    )
  ];

  
  // user cart
  List<Product> _cart=[];

  //get prod list
  List<Product> get shop =>_shop;

  //get user cart
  List<Product> get cart =>_cart;

  //add item to cart
  void addToCart(Product item){
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item){
    _cart.remove(item);
    notifyListeners();
  }

}