import 'package:figma/classes/cartProduct.dart';
import 'package:figma/classes/product.dart';
import 'package:figma/classes/reward.dart';
import 'package:figma/functions/functions.dart';
import 'package:flutter/material.dart';

class CheckOutDetail extends StatefulWidget {
  List<CartProduct> checkOutProducts;
  Reward? reward;
  CheckOutDetail(
      {Key? key, required this.checkOutProducts, required this.reward})
      : super(key: key);

  @override
  State<CheckOutDetail> createState() => _CheckOutDetailState();
}

class _CheckOutDetailState extends State<CheckOutDetail> {
  late Future<List<Product>?> products = getProduct();
  late List<Product>? productsItem = [];

  @override
  Widget build(BuildContext context) {
    dynamic diskonTemp = 0;
    dynamic discount = 0;
    dynamic subtotal = 0;
    double total = 0;
    print(widget.checkOutProducts.length);

    return FutureBuilder(
      future: products,
      builder: (BuildContext context, AsyncSnapshot<List<Product>?> snapshot) {
        if (snapshot.hasData) {
          productsItem = snapshot.data;
          diskonTemp = (reward?.rewardCost ?? 0);

          for (var product in widget.checkOutProducts) {
            total += (productsItem![product.productId!].productPrice! *
                product.cartQuantity!);
          }
          if (diskonTemp == null) {
            discount = 0;
          } else {
            discount = total * (diskonTemp * 0.01);
          }
          subtotal = total - (total * (diskonTemp * 0.01));
          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.39,
              child: Column(children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.checkOutProducts.length,
                    itemBuilder: (context, index) {
                      final checkOutProduct = widget.checkOutProducts[index];
                      return CheckOutItem(
                          product: productsItem![checkOutProduct.productId!],
                          quantity: checkOutProduct.cartQuantity!);
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                  child:
                      Image(image: AssetImage('images/Checkout_page_line.png')),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'TOTAL',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '\$${total.toStringAsFixed(2)}',
                        style:
                            const TextStyle(color: Colors.orange, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Discount',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '\$${discount.toStringAsFixed(2)}',
                        style:
                            const TextStyle(color: Colors.orange, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Subtotal',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        '\$${subtotal.toStringAsFixed(2)}',
                        style:
                            const TextStyle(color: Colors.orange, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );

    // return SingleChildScrollView(
    //   child: Container(
    //     height: MediaQuery.of(context).size.height * 0.3,
    //     child: Column(children: [
    //       Expanded(
    //         child: ListView.builder(
    //           itemCount: widget.checkOutProducts.length,
    //           itemBuilder: (context, index) {
    //             final checkOutProduct = widget.checkOutProducts[index];
    //             return CheckOutItem(
    //                 product: productsItem![checkOutProduct.productId!],
    //                 quantity: checkOutProduct.cartQuantity!);
    //           },
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
    //         child: Image(image: AssetImage('images/Checkout_page_line.png')),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(10.0),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text(
    //               'TOTAL',
    //               style: TextStyle(fontSize: 25),
    //             ),
    //             Text(
    //               '\$${total.toStringAsFixed(2)}',
    //               style: TextStyle(color: Colors.orange, fontSize: 25),
    //             )
    //           ],
    //         ),
    //       ),
    //     ]),
    //   ),
    // );
  }
}

class CheckOutItem extends StatelessWidget {
  Product product;
  int quantity;
  CheckOutItem({
    Key? key,
    required this.product,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        height: 150,
        margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        padding: EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('images/Cart_page_1.png'),
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.productName!,
                    style: const TextStyle(
                        fontSize: 20, overflow: TextOverflow.ellipsis),
                    softWrap: true,
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      product.productDescription!,
                      style: const TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text('$quantity Pc(s)'),
                  Text(
                    '\$${product.productPrice!}',
                    style: const TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
