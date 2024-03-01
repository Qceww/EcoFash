import 'package:figma/classes/cartProduct.dart';
import 'package:figma/classes/product.dart';
import 'package:figma/pages/shop_detailed_view.dart';
import 'package:figma/pages/shop_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

// ignore: must_be_immutable
class GridViews extends StatefulWidget {
  int? productId;
  String? name;
  int? price;
  String? url;

  GridViews(
      {super.key,
      required this.productId,
      required this.name,
      required this.price,
      required this.url});

  @override
  State<GridViews> createState() => _GridViewsState();
}

class _GridViewsState extends State<GridViews> {
  IconData wishlist = Icons.favorite_border;

  // const GridViews({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(widget.productId);
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => ShopDetailedView(
              productId: widget.productId!,
            ),
          ),
        );
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 25,
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.url!), fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (wishlist == Icons.favorite) {
                              wishlist = Icons.favorite_border;
                            } else {
                              wishlist = Icons.favorite;
                            }
                          });
                        },
                        child: Icon(
                          wishlist,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '21WN',
                      style: GoogleFonts.tenorSans(),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      widget.name!,
                      style: GoogleFonts.tenorSans(),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$${widget.price}',
                      style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(color: Colors.red)),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductColor extends StatelessWidget {
  String productColor = '';
  int hexToInteger(String hex) => int.parse(hex.substring(1), radix: 16) + 0xFF000000;
  ProductColor({super.key, required this.productColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        color: Color(hexToInteger(productColor)),
        shape: BoxShape.circle,
      ),
    );
  }
}

class ProductColorBorder extends StatelessWidget {
  String productColor = '';
  int hexToInteger(String hex) => int.parse(hex.substring(1), radix: 16) + 0xFF000000;
  ProductColorBorder({super.key, required this.productColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        color: Color(hexToInteger(productColor)),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black),
      ),
    );
  }
}

class ProductSize extends StatelessWidget {
  String Size = '';
  int hexToInteger(String hex) => int.parse(hex, radix: 16);
  ProductSize({super.key, required this.Size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          Size,
          textAlign: TextAlign.center,
          style: GoogleFonts.tenorSans(
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}

class ProductSizeSelected extends StatelessWidget {
  String Size = '';
  int hexToInteger(String hex) => int.parse(hex, radix: 16);
  ProductSizeSelected({super.key, required this.Size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          Size,
          textAlign: TextAlign.center,
          style: GoogleFonts.tenorSans(
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}

class ProductDetailedView extends StatelessWidget {
  Product product;

  ProductDetailedView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    List<String?> images = [
      product.picture1,
      product.picture2,
      product.picture3,
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.65,
            child: PageView.builder(
                itemCount: 3,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage(images[pagePosition]!),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
          child: Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName!,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  product.productDescription!,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  '\$${product.productPrice}',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProductInformation extends StatelessWidget {
  String title = '';
  String content = '';
  ProductInformation({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: GoogleFonts.tenorSans(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                content,
                textAlign: TextAlign.left,
                style: GoogleFonts.tenorSans(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ));
  }
}

class WishlistEmpty extends StatelessWidget {
  const WishlistEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.close,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            Text(
              'WISHLIST',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(fontSize: 24),
              ),
            ),
            const Image(
              image: AssetImage('images/Home_page_garis.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '0 ITEM(S)',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  "THERE'S NO WISHLIST",
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const ShopGridView(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'SELECT PRODUCT',
                    style: GoogleFonts.tenorSans(
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class WishlistItems extends StatelessWidget {
  const WishlistItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CheckOutProduct {
  String productName;
  String productDescription;
  int productQuantity;
  int productPrice;

  CheckOutProduct({
    required this.productName,
    required this.productDescription,
    required this.productQuantity,
    required this.productPrice,
  });
}

class CheckOutDetail extends StatefulWidget {
  CheckOutDetail({Key? key}) : super(key: key);

  @override
  State<CheckOutDetail> createState() => _CheckOutDetailState();
}

class _CheckOutDetailState extends State<CheckOutDetail> {
  final List<CheckOutProduct> checkOutProducts = [
    CheckOutProduct(
      productName: 'L A M E R E I',
      productDescription: 'Recycle Boucle Knit Cardigan Pink',
      productQuantity: 2,
      productPrice: 120,
    ),
    CheckOutProduct(
      productName: 'L A M A K A L I',
      productDescription: 'Recycle Boucle Knit Cardigan Orange',
      productQuantity: 2,
      productPrice: 100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double total = 0;

    for (var product in checkOutProducts) {
      total += product.productPrice * product.productQuantity;
    }

    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Column(children: [
          Expanded(
            child: ListView.builder(
              itemCount: checkOutProducts.length,
              itemBuilder: (context, index) {
                final checkOutProduct = checkOutProducts[index];
                return CheckOutItem(product: checkOutProduct);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
            child: Image(image: AssetImage('images/Checkout_page_line.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOTAL',
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  '\$${total.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.orange, fontSize: 25),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}


class Order {
  int orderId;
  String recipientName;
  String recipientAddress;
  dynamic createdDate;
  String status;

  Order(
      {required this.orderId,
      required this.recipientName,
      required this.recipientAddress,
      required this.createdDate,
      required this.status});
}

class OrderItem {
  String productName;
  int quantity;

  OrderItem({required this.productName, required this.quantity});
}

class OrderDetail extends StatelessWidget {
  Order order;
  int customerId;

  final List<OrderItem> orderItems = [
    OrderItem(productName: 'Sweater', quantity: 20),
    OrderItem(productName: 'Sweater', quantity: 20),
  ];

  OrderDetail({Key? key, required this.order, required this.customerId})
      : super(key: key);

  Color _getBorderColor(String status) {
    if (status == 'completed') {
      return Colors.green; // Green color for completed status
    } else if (status == 'pending') {
      return Colors.yellow; // Yellow color for pending status
    } else {
      return Colors.red; // Default color for other statuses
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
                        color: Color.fromARGB(255, 235, 232, 232),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
                        child: Column(
                          mainAxisSize: MainAxisSize
                              .min, // Adjust the height based on content
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
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
                              "Recipient Name: ${order.recipientName}",
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
                              "Recipient Address: ${order.recipientAddress}",
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
                              itemCount: orderItems.length,
                              itemBuilder: (context, index) {
                                final orderItem = orderItems[index];
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.circle,
                                          size: 7.5, color: Colors.black),
                                      SizedBox(width: 5),
                                      Text(
                                        "${orderItem.productName} - ${orderItem.quantity} Pcs",
                                        style: GoogleFonts.zenAntique(
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w200,
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
              color: _getBorderColor(
                  order.status), // Apply border color based on status
              width: 2.0,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
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
                padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
                child: Text(
                  "Recipient Address : ${order.recipientAddress}",
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
                padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 20.0),
                child: Text(
                  "Expected Received Date : ${order.createdDate}",
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
  }
}

class CheckOutItem extends StatelessWidget {
  final CheckOutProduct product;

  const CheckOutItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        height: 150,
        margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage('images/Cart_page_1.png'),
              fit: BoxFit.fill,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    product.productDescription,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                SizedBox(height: 5),
                Text(product.productQuantity.toString() + ' Pc(s)'),
                Text(
                  '\$${product.productPrice}',
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
  }
}

class Reward {
  int rewardId;
  String rewardName;
  dynamic rewardExpiry;
  String rewardLocation;

  Reward(
      {required this.rewardId,
      required this.rewardName,
      required this.rewardExpiry,
      required this.rewardLocation});
}

class RewardDetail extends StatelessWidget {
  Reward reward;
  int customerId;

  RewardDetail({Key? key, required this.reward, required this.customerId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.875,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 235, 232, 232),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: Text(
                  "${reward.rewardName}",
                  style: GoogleFonts.zenAntique(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
                child: Text(
                  "Expiry Date : ${reward.rewardExpiry}",
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
                padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 20.0),
                child: Text(
                  "Location : ${reward.rewardLocation}",
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
        ));
  }
}
