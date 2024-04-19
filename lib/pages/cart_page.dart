import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike/components/cart_item.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            const Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (contxet, index) {
                      Shoe individualShoe = value.getCartList()[index];
                      return CartItem(
                        shoe: individualShoe,
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
