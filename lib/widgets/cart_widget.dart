import 'package:figma/classes/cartProduct.dart';
import 'package:figma/classes/product.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/services/http_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Handle closing the cart
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Text(
                  'CART',
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(fontSize: 24),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Spacer(),
                Text(
                  "You have no items in your Shopping Bag.",
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CartNoEmpty extends StatefulWidget {
  CartNoEmpty({Key? key}) : super(key: key);

  @override
  State<CartNoEmpty> createState() => _CartNoEmptyState();
}

class _CartNoEmptyState extends State<CartNoEmpty> {
  late Future<List<CartProduct>?> cartProducts;
  late Future<List<Product>?> products;
  List<CartProduct>? cartProductsItem;
  List<Product>? productsItem;

  @override
  void initState() {
    super.initState();
    cartProducts = getCart();
    products = getProduct();
  }

  @override
  Widget build(BuildContext context) {
    // print(cartProducts);
    // print(cartProductsItem);

    void _showDeleteConfirmationDialog(int index) {
      setState(() {
        cartProductsItem!.removeAt(index);
        if (cartProductsItem!.isEmpty) {
          Navigator.of(context).pop();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartEmpty()),
          );
        }
      });
    }

    return FutureBuilder(
      future: cartProducts,
      builder:
          (BuildContext context, AsyncSnapshot<List<CartProduct>?> snapshot) {
        // print(snapshot.data);
        // print(cartProductsItem);

        if (snapshot.hasData) {
          cartProductsItem = snapshot.data;
          return FutureBuilder(
            future: products,
            builder:
                (BuildContext context, AsyncSnapshot<List<Product>?> snapshot) {
              productsItem = snapshot.data;

              if (snapshot.hasData) {
                double subtotal = 0;
                for (var product in cartProductsItem!) {
                  if (product.cartQuantity! > 0 && product.isChecked == true) {
                    subtotal +=
                        (productsItem![product.productId!].productPrice! *
                            product.cartQuantity!);
                  }
                }

                return Scaffold(
                  body: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Handle closing the cart
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.close,
                              size: 30,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'CART',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Expanded(
                            child: ListView.builder(
                              itemCount: cartProductsItem!.length,
                              itemBuilder: (context, index) {
                                final cartProduct = cartProductsItem![index];
                                return CartItem(
                                  cartProduct: cartProduct,
                                  onQuantityChanged: (value) {
                                    setState(() {
                                      cartProduct.cartQuantity = value;
                                      //Update Value
                                      updateQuantityCart(cartProduct);
                                    });
                                  },
                                  onCheckedChanged: (value) {
                                    setState(() {
                                      cartProduct.isChecked = value;
                                      updateCheckedCarts(cartProduct);
                                    });
                                  },
                                  onDelete: () {
                                    _showDeleteConfirmationDialog(index);
                                  },
                                );
                              },
                            ),
                          ),
                          const Divider(thickness: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'SUBTOTAL',
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                '\$${subtotal.toStringAsFixed(2)}',
                                style: const TextStyle(
                                    color: Colors.orange, fontSize: 25),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            '*shipping charges, taxes and discount codes ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          const Text(
                            'are calculated at the time of accounting.',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

class CartItem extends StatefulWidget {
  final CartProduct cartProduct;
  final ValueChanged<int> onQuantityChanged;
  final VoidCallback onDelete;
  final ValueChanged<bool> onCheckedChanged;

  const CartItem({
    Key? key,
    required this.cartProduct,
    required this.onQuantityChanged,
    required this.onDelete,
    required this.onCheckedChanged,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  Future<List<Product>?> products = getProduct();
  List<Product>? productsItem;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: products,
      builder: (BuildContext context, AsyncSnapshot<List<Product>?> snapshot) {
        productsItem = snapshot.data;

        if (snapshot.hasData) {
          return ListTile(
            title: Container(
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 50.0, 10.0, 10.0),
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Checkbox(
                        value: widget.cartProduct.isChecked,
                        onChanged: (bool? value) {
                          widget
                              .onCheckedChanged(!widget.cartProduct.isChecked!);
                        },
                      ),
                    ),
                  ),
                  const Image(
                    image: AssetImage('images/Cart_page_1.png'),
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productsItem![widget.cartProduct.productId!]
                            .productName!,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          productsItem![widget.cartProduct.productId!]
                              .productDescription!,
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (widget.cartProduct.cartQuantity! > 0) {
                                widget.onQuantityChanged(
                                    widget.cartProduct.cartQuantity! - 1);
                                if (widget.cartProduct.cartQuantity! == 0) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Remove Item'),
                                        content: Text(
                                            'Are you sure you want to remove this item from the cart?'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Cancel'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              widget.onDelete();
                                            },
                                            child: Text('OK'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              }
                            },
                            child: Image(image: AssetImage('images/minus.png')),
                          ),
                          SizedBox(width: 5),
                          Text(widget.cartProduct.cartQuantity!.toString()),
                          SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              widget.onQuantityChanged(
                                  widget.cartProduct.cartQuantity! + 1);
                            },
                            child: Image(image: AssetImage('images/Plus.png')),
                          ),
                        ],
                      ),
                      Text(
                        '\$${productsItem![widget.cartProduct.productId!].productPrice!}',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );

    // return ListTile(
    //   title: Container(
    //     height: 150,
    //     decoration: const BoxDecoration(
    //       color: Colors.white,
    //     ),
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.fromLTRB(0.0, 50.0, 10.0, 10.0),
    //           child: SizedBox(
    //             width: 20,
    //             height: 20,
    //             child: Checkbox(
    //               value: widget.cartProduct.isChecked,
    //               onChanged: (bool? value) {
    //                 widget.onCheckedChanged(!widget.cartProduct.isChecked);
    //               },
    //             ),
    //           ),
    //         ),
    //         const Image(
    //           image: AssetImage('images/Cart_page_1.png'),
    //           fit: BoxFit.fill,
    //         ),
    //         SizedBox(width: 8),
    //         Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               widget.cartProduct.,
    //               style: TextStyle(fontSize: 20),
    //             ),
    //             SizedBox(height: 5),
    //             Container(
    //               width: MediaQuery.of(context).size.width * 0.5,
    //               child: Text(
    //                 widget.cartProduct.cartProductDescription,
    //                 style: TextStyle(color: Colors.grey, fontSize: 13),
    //               ),
    //             ),
    //             SizedBox(height: 5),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.end,
    //               children: [
    //                 GestureDetector(
    //                   onTap: () {
    //                     if (widget.cartProduct.cartProductQuantity > 0) {
    //                       widget.onQuantityChanged(
    //                           widget.cartProduct.cartProductQuantity - 1);
    //                       if (widget.cartProduct.cartProductQuantity == 0) {
    //                         showDialog(
    //                           context: context,
    //                           builder: (BuildContext context) {
    //                             return AlertDialog(
    //                               title: Text('Remove Item'),
    //                               content: Text(
    //                                   'Are you sure you want to remove this item from the cart?'),
    //                               actions: <Widget>[
    //                                 TextButton(
    //                                   onPressed: () {
    //                                     Navigator.of(context).pop();
    //                                   },
    //                                   child: Text('Cancel'),
    //                                 ),
    //                                 TextButton(
    //                                   onPressed: () {
    //                                     Navigator.of(context).pop();
    //                                     widget.onDelete();
    //                                   },
    //                                   child: Text('OK'),
    //                                 ),
    //                               ],
    //                             );
    //                           },
    //                         );
    //                       }
    //                     }
    //                   },
    //                   child: Image(image: AssetImage('images/minus.png')),
    //                 ),
    //                 SizedBox(width: 5),
    //                 Text(widget.product.productQuantity.toString()),
    //                 SizedBox(width: 5),
    //                 GestureDetector(
    //                   onTap: () {
    //                     widget.onQuantityChanged(
    //                         widget.product.productQuantity + 1);
    //                   },
    //                   child: Image(image: AssetImage('images/Plus.png')),
    //                 ),
    //               ],
    //             ),
    //             Text(
    //               '\$${widget.product.productPrice}',
    //               style: TextStyle(
    //                 color: Colors.orange,
    //                 fontSize: 20,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
