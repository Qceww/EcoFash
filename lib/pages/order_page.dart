import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatelessWidget {
  int customerId = -1;
  final List<Order> orders = [
    Order(
        orderId: 123,
        recipientName: 'Joeliardo',
        recipientAddress: 'Jalan Senam',
        createdDate: '12/10/2024',
        status: 'completed'),
    Order(
        orderId: 123,
        recipientName: 'Joeliardo',
        recipientAddress: 'Jalan Senam',
        createdDate: '12/10/2024',
        status: 'pending'),
  ];
  OrderPage({Key? key, required this.customerId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: IconButton(
                      onPressed: () {
                        // Handle closing the cart
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
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
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    final order = orders[index];
                    return OrderDetail(
                      order: order,
                      customerId: customerId,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
