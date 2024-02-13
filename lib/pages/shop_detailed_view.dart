// ignore_for_file: prefer_const_constructors
import 'package:figma/Shop_grid_view.dart';
import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopDetailedView extends StatefulWidget {
  const ShopDetailedView({super.key});

  @override
  State<ShopDetailedView> createState() => _ShopDetailedView();
}

class _ShopDetailedView extends State<ShopDetailedView> {
  bool shippingDropDown = false;
  bool codDropDown = false;
  bool returnDropDown = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: EcofashBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ProductDetailedView(
                    productName: 'MOHAN',
                    productDescription: 'Recycle Boucle Knit Cardigan Pink',
                    productPrice: 120),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          'Size',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.tenorSans(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        ProductColor(productColor: 'FFF0456'),
                        SizedBox(
                          width: 8.0,
                        ),
                        ProductColor(productColor: 'FFF0123F'),
                        SizedBox(
                          width: 8.0,
                        ),
                        ProductColor(productColor: 'FFFFF000F'),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          'Size',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.tenorSans(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
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
                                  "S",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tenorSans(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Container(
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
                                  "M",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tenorSans(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Container(
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
                                  "L",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.tenorSans(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ProductInformation(
                    title: 'MATERIALS',
                    content:
                        'Crafted from 100% certified organic cotton fabric, this black coat exemplifies our commitment to sustainability. Our organic cotton is sourced responsibly, free from harmful chemicals, and produced in accordance with the highest environmental and ethical standards.'),
                ProductInformation(
                    title: 'PRODUCT CARE',
                    content:
                        'To ensure the longevity of this organic cotton coat, we recommend washing it in cold or warm water using a gentle cycle. For eco-conscious care, consider line-drying it in a shaded area. Avoid ironing, and if the need arises to use a dryer, opt for a low-heat setting. Please refrain from dry cleaning, as our commitment to sustainability extends to discouraging practices that may weaken the organic fibers.'),
                ProductInformation(
                    title: 'FINISHING',
                    content:
                        'The fabric has been carefully stone-washed to achieve maximum softness, providing you not only with a stylish black coat but also one that prioritizes comfort and ethical craftsmanship.'),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 75.0, 20.0, 0.0),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CARE',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.tenorSans(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Image(
                                image: AssetImage(
                                    'images/Shop_Detailed_View_Do_Not_Bleach.png')),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Do not use bleach',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.tenorSans(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Image(
                                image: AssetImage(
                                    'images/Shop_Detailed_View_Do_Not_Tumble_Dry.png')),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Do not tumble dry',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.tenorSans(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Image(
                                image: AssetImage(
                                    'images/Shop_Detailed_View_Do_Not_Wash.png')),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Dry clean with tetrachloroethylene',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.tenorSans(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Image(
                                image: AssetImage(
                                    'images/Shop_Detailed_View_Iron_Low_Temperature.png')),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Iron at a maximum of 110ºC/230ºF',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.tenorSans(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Image(
                              image: AssetImage(
                                  'images/Shop_Detailed_View_Shipping.png'),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Free Flat Rate Shipping',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.tenorSans(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  shippingDropDown = !shippingDropDown;
                                });
                              },
                              child: Image(
                                image: AssetImage(
                                  shippingDropDown
                                      ? 'images/Shop_Detailed_View_Backward.png'
                                      : 'images/Shop_Detailed_View_Forward.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (shippingDropDown)
                          Container(
                            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40.0,
                                ),
                                Text(
                                  'Can be checked in out website',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.tenorSans(
                                    textStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Image(
                              image: AssetImage(
                                  'images/Shop_Detailed_View_Tag.png'),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'COD Policy',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.tenorSans(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  codDropDown = !codDropDown;
                                });
                              },
                              child: Image(
                                image: AssetImage(
                                  codDropDown
                                      ? 'images/Shop_Detailed_View_Backward.png'
                                      : 'images/Shop_Detailed_View_Forward.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (codDropDown)
                          Container(
                            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40.0,
                                ),
                                Text(
                                  'Can be checked in out website',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.tenorSans(
                                    textStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Image(
                              image: AssetImage(
                                  'images/Shop_Detailed_View_Refresh.png'),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Return Policy',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.tenorSans(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  returnDropDown = !returnDropDown;
                                });
                              },
                              child: Image(
                                image: AssetImage(
                                  returnDropDown
                                      ? 'images/Shop_Detailed_View_Backward.png'
                                      : 'images/Shop_Detailed_View_Forward.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (returnDropDown)
                          Container(
                            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40.0,
                                ),
                                Text(
                                  'Can be checked in out website',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.tenorSans(
                                    textStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 50.0),
                  child: Text(
                    'YOU MAY ALSO LIKE',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.tenorSans(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GridViews(
                        name: 'reversible angora cardigan',
                        price: 120,
                        url: 'Home_page_new_arrival_1.png'),
                    GridViews(
                        name: 'reversible angora cardigan',
                        price: 120,
                        url: 'Home_page_new_arrival_1.png'),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GridViews(
                        name: 'reversible angora cardigan',
                        price: 120,
                        url: 'Home_page_new_arrival_1.png'),
                    GridViews(
                        name: 'reversible angora cardigan',
                        price: 120,
                        url: 'Home_page_new_arrival_1.png'),
                  ],
                ),
                const SizedBox(
                  height: 100.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('images/Twitter.png'),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Image(
                      image: AssetImage('images/Instagram.png'),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Image(
                      image: AssetImage('images/YouTube.png'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  image: AssetImage('images/Home_page_garis.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'support@ecofash',
                      style: GoogleFonts.tenorSans(),
                    ),
                    Text(
                      '+12 123 456 7896',
                      style: GoogleFonts.tenorSans(),
                    ),
                    Text(
                      '08.00 - 22.00 - Everday',
                      style: GoogleFonts.tenorSans(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  image: AssetImage('images/Home_page_garis.png'),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'About',
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Contact',
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Blog',
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        color: Colors.black,
        child: Row(children: [
          const Image(
            image: AssetImage('images/Shop_Detailed_View_Plus.png'),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            'ADD TO BASKET',
            textAlign: TextAlign.left,
            style: GoogleFonts.tenorSans(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          )
        ]),
      ),
    );
  }
}
