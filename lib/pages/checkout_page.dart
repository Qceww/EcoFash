import 'package:figma/classes/address.dart';
import 'package:figma/classes/cartProduct.dart';
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
    // await player.play(AssetSource(soundPath));
    player.play(AssetSource(soundPath));
  }

  @override
  List<Address>? addressListItem = [];
  late Future<List<Address>?> addressList = getAddress(1);
  Widget build(BuildContext context) {
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
                                addressListItem![0].addressName!,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Text(
                                addressListItem![0].addressDetail!,
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
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => AddressPage(addresses: addressListItem)));
                        },
                        child: const Image(
                            image: AssetImage('images/Checkout_page_arrow.png')),
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
                        "Apply voucher before you check out",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.tenorSans(
                          textStyle:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    RewardPage(customerId: 1)));
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
                ),
              ]),
            )),
            bottomNavigationBar: GestureDetector(
              onTap: () {
                playSound();

                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => const PaymentSuccess()));
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
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   body: SafeArea(
    //       child: Center(
    //     child: Column(children: [
    //       GestureDetector(
    //         onTap: () {
    //           widget.checkOutProducts = [];
    //           Navigator.of(context).pop();
    //         },
    //         child: Align(
    //           alignment: Alignment.centerLeft,
    //           child: Padding(
    //             padding: const EdgeInsets.only(left: 20.0),
    //             child: Image(
    //               image: const AssetImage('images/Paymen_Success_arrow.png'),
    //               width: MediaQuery.of(context).size.width * 0.08,
    //               height: MediaQuery.of(context).size.height * 0.05,
    //             ),
    //           ),
    //         ),
    //       ),
    //       Padding(
    //         padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 40.0),
    //         child: Column(
    //           children: [
    //             Text(
    //               'CHECK OUT',
    //               textAlign: TextAlign.left,
    //               style: GoogleFonts.tenorSans(
    //                 textStyle: const TextStyle(
    //                     color: Colors.black,
    //                     fontSize: 22,
    //                     fontWeight: FontWeight.w400),
    //               ),
    //             ),
    //             const Image(
    //                 image: AssetImage('images/Checkout_page_title.png')),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         width: MediaQuery.of(context).size.width - 40.0,
    //         // color: Colors.amber,
    //         child: Row(
    //           children: [
    //             Container(
    //               width: MediaQuery.of(context).size.width * 0.6,
    //               child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       "Iris Watson",
    //                       textAlign: TextAlign.left,
    //                       style: GoogleFonts.tenorSans(
    //                         textStyle: const TextStyle(
    //                             color: Colors.black,
    //                             fontSize: 18,
    //                             fontWeight: FontWeight.w400),
    //                       ),
    //                     ),
    //                     Text(
    //                       "606-3727 Ullamcorper. Street Roseville NH 11523",
    //                       textAlign: TextAlign.left,
    //                       style: GoogleFonts.tenorSans(
    //                         textStyle: const TextStyle(
    //                             color: Colors.grey, fontSize: 18),
    //                       ),
    //                     ),
    //                     Text(
    //                       "(786) 713-8616",
    //                       textAlign: TextAlign.left,
    //                       style: GoogleFonts.tenorSans(
    //                         textStyle: const TextStyle(
    //                             color: Colors.grey, fontSize: 18),
    //                       ),
    //                     ),
    //                   ]),
    //             ),
    //             Spacer(),
    //             const Image(
    //                 image: AssetImage('images/Checkout_page_arrow.png')),
    //           ],
    //         ),
    //       ),
    //       const Padding(
    //         padding: EdgeInsets.all(25.0),
    //         child: Image(image: AssetImage('images/Checkout_page_line.png')),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
    //         child: Row(
    //           children: [
    //             Container(
    //                 width: 60.0,
    //                 child: const Image(
    //                     image:
    //                         AssetImage('images/Checkout_page_masterCard.png'))),
    //             SizedBox(
    //               width: 10.0,
    //             ),
    //             Text(
    //               "Master Card ending  ••••89",
    //               textAlign: TextAlign.left,
    //               style: GoogleFonts.tenorSans(
    //                 textStyle:
    //                     const TextStyle(color: Colors.grey, fontSize: 18),
    //               ),
    //             ),
    //             Spacer(),
    //           ],
    //         ),
    //       ),
    //       const Padding(
    //         padding: EdgeInsets.all(25.0),
    //         child: Image(image: AssetImage('images/Checkout_page_line.png')),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
    //         child: Row(
    //           children: [
    //             Text(
    //               "Apply voucher before you check out",
    //               textAlign: TextAlign.left,
    //               style: GoogleFonts.tenorSans(
    //                 textStyle:
    //                     const TextStyle(color: Colors.grey, fontSize: 18),
    //               ),
    //             ),
    //             const Spacer(),
    //             GestureDetector(
    //                 onTap: () {
    //                   Navigator.of(context).push(MaterialPageRoute(
    //                       builder: (BuildContext context) =>
    //                           RewardPage(customerId: 1)));
    //                 },
    //                 child: const Image(
    //                     image: AssetImage('images/Checkout_page_arrow.png'))),
    //           ],
    //         ),
    //       ),
    //       const Padding(
    //         padding: EdgeInsets.all(25.0),
    //         child: Image(image: AssetImage('images/Checkout_page_line.png')),
    //       ),
    //       CheckOutDetail(
    //         checkOutProducts: widget.checkOutProducts,
    //       ),
    //     ]),
    //   )),
    //   bottomNavigationBar: GestureDetector(
    //     onTap: () {
    //       playSound();

    //       Navigator.of(context).pushReplacement(MaterialPageRoute(
    //           builder: (BuildContext context) => const PaymentSuccess()));
    //     },
    //     child: BottomAppBar(
    //       height: 60.0,
    //       color: Colors.black,
    //       child: Container(
    //         height: 60.0,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 IconButton(
    //                   icon: const Icon(
    //                     Icons.shopping_bag_outlined,
    //                     color: Colors.white,
    //                     size: 25,
    //                   ),
    //                   onPressed: () {},
    //                 ),
    //                 Column(
    //                   children: [
    //                     SizedBox(height: 5),
    //                     Text(
    //                       "Checkout",
    //                       textAlign: TextAlign.left,
    //                       style: GoogleFonts.tenorSans(
    //                         textStyle: const TextStyle(
    //                             color: Colors.white, fontSize: 22),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
