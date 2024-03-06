import 'package:figma/classes/cartProduct.dart';
import 'package:figma/functions/functions.dart';
// import 'package:figma/pages/checkout_page.dart';
import 'package:figma/widgets/cart_widget.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<CartProduct>?> cartProducts = getCart();
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: cartProducts,
          builder: (BuildContext context,
              AsyncSnapshot<List<CartProduct>?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.deepPurpleAccent,
                ),
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return CartNoEmpty();
              } else {
                return const CartEmpty();
              }
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
