import 'package:figma/classes/cartProduct.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/pages/checkout_page.dart';
import 'package:figma/widgets/cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key});

  @override
  Widget build(BuildContext context) {
    late Future<List<CartProduct>?> cartProducts = getCart();
    return Scaffold(
      body: SafeArea(
          child: FutureBuilder(
        future: cartProducts,
        builder:
            (BuildContext context, AsyncSnapshot<List<CartProduct>?> snapshot) {
          if (snapshot.hasData) {
            return CartNoEmpty();
          } else {
            return CartEmpty();
          }
        },
      )),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => const CheckOut()));
        },
        child: BottomAppBar(
          height: 60.0,
          color: Colors.black,
          child: Container(
            height: 60.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Column(
                      children: [
                        SizedBox(height: 5),
                        Text(
                          "BUY NOW",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.tenorSans(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
