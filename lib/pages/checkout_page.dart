import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOut();
}

class _CheckOut extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
          child: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
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
                Image(image: AssetImage('images/Checkout_page_title.png')),
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
                          "Iris Watson",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.tenorSans(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Text(
                          "606-3727 Ullamcorper. Street Roseville NH 11523",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.tenorSans(
                            textStyle: const TextStyle(
                                color: Colors.grey, fontSize: 18),
                          ),
                        ),
                        Text(
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
                Image(image: AssetImage('images/Checkout_page_arrow.png')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image(image: AssetImage('images/Checkout_page_line.png')),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              children: [
                Container(
                    width: 60.0,
                    child: Image(
                        image:
                            AssetImage('images/Checkout_page_masterCard.png'))),
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
                Image(image: AssetImage('images/Checkout_page_arrow.png')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image(image: AssetImage('images/Checkout_page_line.png')),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image(image: AssetImage('images/Checkout_page_line.png')),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 25.0),
            child: Row(
              children: [
                Text(
                  "Total",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle:
                        const TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Spacer(),
                Text(
                  "\$120",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(color: Colors.red, fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ]),
      )),
      bottomNavigationBar: BottomAppBar(
        height: 60.0,
        color: Colors.black,
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
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
                      "Checkout",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
