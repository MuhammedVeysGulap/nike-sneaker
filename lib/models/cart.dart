import 'package:flutter/widgets.dart';
import 'package:sneaker_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Jordan',
        price: '240',
        imagePath: 'assets/images/nike air jordan.png',
        description:
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit'),
    Shoe(
        name: 'Nike Air Force',
        price: '236',
        imagePath: 'assets/images/nike air force.png',
        description:
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit'),
    Shoe(
        name: 'Nike Air Max',
        price: '274',
        imagePath: 'assets/images/nike air max.png',
        description:
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit'),
    Shoe(
        name: 'Nike Dunk',
        price: '280',
        imagePath: 'assets/images/nike dunk.png',
        description:
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
