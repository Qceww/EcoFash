import 'dart:async';

import 'package:figma/classes/address.dart';
import 'package:figma/classes/cartProduct.dart';
import 'package:figma/classes/order.dart';
import 'package:figma/classes/orderItem.dart';
import 'package:figma/classes/product.dart';
import 'package:figma/classes/reward.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/pages/address_page.dart';
import 'package:figma/pages/paymentSuccess.dart';
import 'package:figma/pages/promo_page.dart';
import 'package:figma/widgets/checkout_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

class CheckOutPage extends StatefulWidget {
  List<CartProduct> checkOutProducts;

  CheckOutPage({super.key, required this.checkOutProducts});

  @override
  State<CheckOutPage> createState() => _CheckOutPage();
}

class _CheckOutPage extends State<CheckOutPage> {
  final player = AudioPlayer();

  Future<void> playSound() async {
    String soundPath = "Success_Payment.mp3";
    player.play(AssetSource(soundPath));
  }

  @override
  void initState() {
    super.initState();
    removePromo();
    removeAddressNow();
  }

  @override
  List<Address>? addressListItem = [];

  late Future<List<Address>?> addressList = getAddress(currentUser!.userId!);
  Reward? reward;
  Address? addressNow;
  late int? createRequest;
  late Future<int?> createOrderItemRequest;
  late Future<int?> removeCartItemRequest;
  late Future<int?> updateProductQuantityRequest;
  Widget build(BuildContext context) {
    reward = getPromo();
    addressNow = getAddressNow();
    String applied = "Promo Applied";
    String notApplied = "Apply voucher before you check out";
    return FutureBuilder(
      future: addressList,
      builder: (BuildContext context, AsyncSnapshot<List<Address>?> snapshot) {
        if (snapshot.hasData) {
          addressListItem = snapshot.data;

          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Center(
              child: Column(children: [
                GestureDetector(
                  onTap: () {
                    widget.checkOutProducts = [];
                    Navigator.of(context).pop();
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Image(
                        image:
                            const AssetImage('images/Paymen_Success_arrow.png'),
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 40.0),
                  child: Column(
                    children: [
                      Text(
                        'CHECK OUT',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const Image(
                          image: AssetImage('images/Checkout_page_title.png')),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 40.0,
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // reward != null ? applied : notApplied,
                                addressNow == null
                                    ? addressListItem![0].addressName!
                                    : addressNow!.addressName!,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Text(
                                addressNow == null
                                    ? addressListItem![0].addressDetail!
                                    : addressNow!.addressDetail!,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                              ),
                              Text(
                                // currentUser!.phone!,
                                "(786) 713-8616",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                              ),
                            ]),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Timer.run(() {
                              addressNow = getAddressNow();
                            });
                          });
                          Navigator.of(context)
                              .push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      AddressPage(addresses: addressListItem)))
                              .then((value) {
                            setState(() {});
                          });
                        },
                        child: const Image(
                            image:
                                AssetImage('images/Checkout_page_arrow.png')),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child:
                      Image(image: AssetImage('images/Checkout_page_line.png')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    children: [
                      Container(
                          width: 60.0,
                          child: const Image(
                              image: AssetImage(
                                  'images/Checkout_page_masterCard.png'))),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Master Card ending  ••••89",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.tenorSans(
                          textStyle:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child:
                      Image(image: AssetImage('images/Checkout_page_line.png')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    children: [
                      Text(
                        reward != null ? applied : notApplied,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.tenorSans(
                          textStyle:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              Timer.run(() {
                                reward = getPromo();
                              });
                              removePromo();
                            });
                            Navigator.of(context)
                                .push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        RewardPage()))
                                .then((value) {
                              setState(() {});
                            });
                          },
                          child: const Image(
                              image: AssetImage(
                                  'images/Checkout_page_arrow.png'))),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child:
                      Image(image: AssetImage('images/Checkout_page_line.png')),
                ),
                CheckOutDetail(
                  checkOutProducts: widget.checkOutProducts,
                  reward: reward,
                ),
              ]),
            )),
            bottomNavigationBar: GestureDetector(
              onTap: () async {
                DateTime dateNow = DateTime.now();
                DateTime dateClear =
                    DateTime(dateNow.year, dateNow.month, dateNow.day + 3);
                Order order = Order(
                    null,
                    currentUser!.userId,
                    addressNow!.addressId,
                    dateClear.toString(),
                    "shipping",
                    null);
                print("Masuk Create KOK4");
                // Order(
                //     null,
                //     currentUser!.userId,
                //     addressNow!.addressId,
                //     dateClear.toString(),
                //     "shipping",
                //     null);
                createRequest = await createOrder(order);
                if (createRequest != null) {
                  for (CartProduct item in widget.checkOutProducts) {
                    {
                      createOrderItemRequest = createOrderItem(OrderItem(
                          createRequest!, item.productId!, item.cartQuantity!));
                      removeCartItemRequest = deleteCart(item.cartId!);
                      Product product = Product(
                          item.productId! + 1,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          item.cartQuantity);
                      updateProductQuantityRequest =
                          updateQuantityProduct(product);
                    }
                  }
                  playSound();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const PaymentSuccess()));
                }
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
                            onPressed: () {},
                          ),
                          Column(
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "Checkout",
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
          ;
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
