import 'package:figma/classes/address.dart';
import 'package:figma/classes/order.dart';
import 'package:figma/classes/orderItem.dart';
import 'package:figma/classes/product.dart';
import 'package:figma/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetail extends StatelessWidget {
  Order order;

  OrderDetail({Key? key, required this.order}) : super(key: key);

  Color _getBorderColor(String status) {
    if (status == 'completed') {
      return Colors.green; // Green color for completed status
    } else if (status == 'shipping') {
      return Colors.yellow; // Yellow color for pending status
    } else {
      return Colors.red; // Default color for other statuses
    }
  }

  late Future<Address?> address = getDetailedAddress(order.addressId!);
  late Future<List<OrderItem>?> orderItems = getOrderItem(order.orderId!);
  Future<List<Product>?> product = getProduct();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: address,
      builder: (BuildContext context, AsyncSnapshot snapshot1) {
        if (snapshot1.hasData) {
          print("Snapshot1 Aman");
          Address addressItem = snapshot1.data;
          return FutureBuilder(
            future: orderItems,
            builder: (BuildContext context, AsyncSnapshot snapshot2) {
              if (snapshot2.hasData) {
                print("Snapshot2 aman");
                List<OrderItem>? orderItemsItem = snapshot2.data;
                return FutureBuilder(
                  future: product,
                  builder: (BuildContext context, AsyncSnapshot snapshot3) {
                    if (snapshot3.hasData) {
                      print("Snapshot3 aman");
                      List<Product> productItem = snapshot3.data;
                      return Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              builder: (BuildContext context) {
                                return Container(
                                  color: Colors.transparent,
                                  child: Center(
                                    child: FractionallySizedBox(
                                      widthFactor: 0.8,
                                      child: Container(
                                        padding: EdgeInsets.all(20.0),
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 235, 232, 232),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0.0, 0.0, 0.0, 40.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize
                                                .min, // Adjust the height based on content
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  IconButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    icon: Icon(Icons.close),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "ORDER",
                                                style: GoogleFonts.zenAntique(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 20.0),
                                              Text(
                                                // "Recipient Name: ${currentUser!.firstName} ${currentUser!.lastName}",
                                                "Recipient Name: Hosannia Momita",
                                                style: GoogleFonts.zenAntique(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10.0),
                                              Text(
                                                "Recipient Address:${addressItem.addressDetail}",
                                                style: GoogleFonts.zenAntique(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10.0),
                                              Text(
                                                "Expected Received Date: ${order.createdDate}",
                                                style: GoogleFonts.zenAntique(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10.0),
                                              Text(
                                                "Items:",
                                                style: GoogleFonts.zenAntique(
                                                  textStyle: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ),
                                              ListView.builder(
                                                shrinkWrap: true,
                                                itemCount:
                                                    orderItemsItem!.length,
                                                itemBuilder: (context, index) {
                                                  final orderItem =
                                                      orderItemsItem[index];
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.circle,
                                                            size: 7.5,
                                                            color:
                                                                Colors.black),
                                                        SizedBox(width: 5),
                                                        Text(
                                                          "${productItem[orderItem.productId - 1].productName} - ${orderItem.orderQuantity} Pcs",
                                                          style: GoogleFonts
                                                              .zenAntique(
                                                            textStyle:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w200,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.875,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 235, 232, 232),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: _getBorderColor(order
                                    .orderStatus!), // Apply border color based on status
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      10.0, 20.0, 10.0, 0.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "ORDER",
                                        style: GoogleFonts.zenAntique(
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      Text(
                                        "${order.orderId}",
                                        style: GoogleFonts.zenAntique(
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      10.0, 4.0, 10.0, 4.0),
                                  child: Text(
                                    "Recipient Address : ${addressItem.addressDetail}",
                                    style: GoogleFonts.zenAntique(
                                      textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      10.0, 4.0, 10.0, 20.0),
                                  child: Text(
                                    "Expected Received Date : ${order.estimatedDate}",
                                    style: GoogleFonts.zenAntique(
                                      textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
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
              } else {}
              return const CircularProgressIndicator();
            },
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );

    // return Padding(
    //   padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    //   child: GestureDetector(
    //     onTap: () {
    //       showModalBottomSheet(
    //         context: context,
    //         isScrollControlled: true,
    //         backgroundColor: Colors.transparent,
    //         builder: (BuildContext context) {
    //           return Container(
    //             color: Colors.transparent,
    //             child: Center(
    //               child: FractionallySizedBox(
    //                 widthFactor: 0.8,
    //                 child: Container(
    //                   padding: EdgeInsets.all(20.0),
    //                   decoration: BoxDecoration(
    //                     color: Color.fromARGB(255, 235, 232, 232),
    //                     borderRadius: BorderRadius.circular(20.0),
    //                   ),
    //                   child: Padding(
    //                     padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
    //                     child: Column(
    //                       mainAxisSize: MainAxisSize
    //                           .min, // Adjust the height based on content
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.end,
    //                           children: [
    //                             IconButton(
    //                               onPressed: () {
    //                                 Navigator.of(context).pop();
    //                               },
    //                               icon: Icon(Icons.close),
    //                             ),
    //                           ],
    //                         ),
    //                         Text(
    //                           "ORDER",
    //                           style: GoogleFonts.zenAntique(
    //                             textStyle: const TextStyle(
    //                               color: Colors.black,
    //                               fontSize: 18,
    //                               fontWeight: FontWeight.w200,
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(height: 20.0),
    //                         Text(
    //                           "Recipient Name: ${currentUser!.firstName} ${currentUser!.lastName}",
    //                           style: GoogleFonts.zenAntique(
    //                             textStyle: const TextStyle(
    //                               color: Colors.black,
    //                               fontSize: 14,
    //                               fontWeight: FontWeight.w200,
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(height: 10.0),
    //                         Text(
    //                           "Recipient Address:${address.}",
    //                           style: GoogleFonts.zenAntique(
    //                             textStyle: const TextStyle(
    //                               color: Colors.black,
    //                               fontSize: 14,
    //                               fontWeight: FontWeight.w200,
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(height: 10.0),
    //                         Text(
    //                           "Expected Received Date: ${order.createdDate}",
    //                           style: GoogleFonts.zenAntique(
    //                             textStyle: const TextStyle(
    //                               color: Colors.black,
    //                               fontSize: 14,
    //                               fontWeight: FontWeight.w200,
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(height: 10.0),
    //                         Text(
    //                           "Items:",
    //                           style: GoogleFonts.zenAntique(
    //                             textStyle: const TextStyle(
    //                               color: Colors.black,
    //                               fontSize: 14,
    //                               fontWeight: FontWeight.w200,
    //                             ),
    //                           ),
    //                         ),
    //                         ListView.builder(
    //                           shrinkWrap: true,
    //                           itemCount: orderItems.length,
    //                           itemBuilder: (context, index) {
    //                             final orderItem = orderItems[index];
    //                             return Padding(
    //                               padding:
    //                                   const EdgeInsets.symmetric(vertical: 4.0),
    //                               child: Row(
    //                                 children: [
    //                                   Icon(Icons.circle,
    //                                       size: 7.5, color: Colors.black),
    //                                   SizedBox(width: 5),
    //                                   Text(
    //                                     "${orderItem.productName} - ${orderItem.quantity} Pcs",
    //                                     style: GoogleFonts.zenAntique(
    //                                       textStyle: const TextStyle(
    //                                         color: Colors.black,
    //                                         fontSize: 14,
    //                                         fontWeight: FontWeight.w200,
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             );
    //                           },
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           );
    //         },
    //       );
    //     },
    //     child: Container(
    //       width: MediaQuery.of(context).size.width * 0.875,
    //       decoration: BoxDecoration(
    //         color: Color.fromARGB(255, 235, 232, 232),
    //         borderRadius: BorderRadius.circular(20.0),
    //         border: Border.all(
    //           color: _getBorderColor(
    //               order.status), // Apply border color based on status
    //           width: 2.0,
    //         ),
    //       ),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
    //             child: Row(
    //               children: [
    //                 Text(
    //                   "ORDER",
    //                   style: GoogleFonts.zenAntique(
    //                     textStyle: const TextStyle(
    //                       color: Colors.black,
    //                       fontSize: 18,
    //                       fontWeight: FontWeight.w200,
    //                     ),
    //                   ),
    //                 ),
    //                 SizedBox(width: 10.0),
    //                 Text(
    //                   "${order.orderId}",
    //                   style: GoogleFonts.zenAntique(
    //                     textStyle: const TextStyle(
    //                       color: Colors.black,
    //                       fontSize: 18,
    //                       fontWeight: FontWeight.w200,
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
    //             child: Text(
    //               "Recipient Address : ${order.recipientAddress}",
    //               style: GoogleFonts.zenAntique(
    //                 textStyle: const TextStyle(
    //                   color: Colors.black,
    //                   fontSize: 14,
    //                   fontWeight: FontWeight.w200,
    //                 ),
    //               ),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 20.0),
    //             child: Text(
    //               "Expected Received Date : ${order.createdDate}",
    //               style: GoogleFonts.zenAntique(
    //                 textStyle: const TextStyle(
    //                   color: Colors.black,
    //                   fontSize: 14,
    //                   fontWeight: FontWeight.w200,
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
