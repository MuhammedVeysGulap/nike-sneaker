import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_app/models/cart.dart';
import 'package:sneaker_app/models/shoe.dart';

import '../widgets/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
              //get individual shoe
              Shoe invidualShoe = value.getUserCart()[index];

              //return the cart item
              return CartItem(
                shoe: invidualShoe,
              );
            },
          ))
        ],
      ),
    );
  }
}
