import 'dart:ffi';

import 'package:figma/pages/home_page.dart';
import 'package:figma/pages/shop_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key? key});

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Center(
            child: Column(
              children: [
                // ARROW
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => const HomePage()));
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Image(
                        image: AssetImage('images/Paymen_Success_arrow.png'),
                        width: MediaQuery.of(context).size.width * 0.08,
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 45.0),
                  child: Column(
                    children: [
                      Text(
                        'PAYMENT SUCCESS',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Image(
                        image: AssetImage(
                            'images/Checkout_page_success_logoo.png'),
                        width: MediaQuery.of(context).size.width * 0.40,
                        height: MediaQuery.of(context).size.height * 0.28,
                      ),
                      Text(
                        'Your payment was success',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Payment ID',
                            style: GoogleFonts.tenorSans(
                              textStyle: const TextStyle(
                                color: Color.fromARGB(255, 98, 98, 98),
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.10,
                            height: MediaQuery.of(context).size.height * 0.10,
                          ),
                          Text(
                            '15263541',
                            style: GoogleFonts.tenorSans(
                              textStyle: const TextStyle(
                                color: Color.fromARGB(255, 98, 98, 98),
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 55),
                      Text(
                        'Rate your purchase',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                                'images/PaymentSuccess_page_InLove.png'),
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                          Image(
                            image: AssetImage(
                                'images/PaymentSuccess_page_Happy.png'),
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                          Image(
                            image: AssetImage(
                                'images/PaymentSuccess_page_kecewa.png'),
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.47,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const ShopGridView()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // Background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'CONTINUE SHOPPING',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
