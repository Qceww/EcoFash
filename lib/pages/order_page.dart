import 'package:figma/classes/order.dart';
import 'package:figma/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/order_widget.dart';

class OrderPage extends StatelessWidget {
  Future<List<Order>?> orderItems = getOrder(1);
  OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late List<Order> orders = [];
    return FutureBuilder(
      future: orderItems,
      builder: (BuildContext context, AsyncSnapshot<List<Order>?> snapshot) {
        if (snapshot.hasData) {
          orders = snapshot.data!;
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          child: IconButton(
                            onPressed: () {
                              // Handle closing the cart
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back_sharp,
                              size: 30,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Center(
                            child: Text(
                              "ORDER HISTORY",
                              style: GoogleFonts.zenAntique(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Expanded(
                      child: ListView.builder(
                        itemCount: orders!.length,
                        itemBuilder: (context, index) {
                          final order = orders[index];
                          return OrderDetail(
                            order: order,
                          );
                        },
                      ),
                    ),
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
  }
}
