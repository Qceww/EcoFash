// ignore_for_file: prefer_const_constructors
import 'package:figma/classes/colors.dart';
import 'package:figma/classes/product.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/Widgets.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopDetailedView extends StatefulWidget {
  int? productId;

  ShopDetailedView({super.key, required this.productId});

  @override
  State<ShopDetailedView> createState() => _ShopDetailedView();
}

@override
void initState() {
  loginUser(currentUser!.email!, currentUser!.password!);
}

class _ShopDetailedView extends State<ShopDetailedView> {
  String added = 'ADD TO BASKET';
  bool shippingDropDown = false;
  bool codDropDown = false;
  bool returnDropDown = false;

  Future<List<ColorClass>?> colors = getAllColor();

  List<String> sizes = ['S', 'M', 'L'];

  int selectedIndex = -1;
  int selectedIndex2 = -1;
  IconData wishlist = Icons.favorite_border;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print("asd ${widget.productId!}");
    List<int?> colorIdnya = [];
    Future<Product?> product = getDetailedProduct(widget.productId!);

    return Scaffold(
      drawer: Navbar(),
      backgroundColor: Colors.white,
      appBar: EcofashBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                FutureBuilder(
                  future: product,
                  builder: (BuildContext context, AsyncSnapshot snapshot1) {
                    Product? productItem = snapshot1.data;

                    if (snapshot1.hasData) {
                      colorIdnya.add(productItem!.productColorId1);
                      colorIdnya.add(productItem!.productColorId2);
                      colorIdnya.add(productItem!.productColorId3);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProductDetailedView(product: productItem!),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20.0, 20.0, 20.0, 0.0),
                            // padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  FutureBuilder(
                                    future: colors,
                                    builder: (BuildContext context,
                                        AsyncSnapshot snapshot2) {
                                      List<ColorClass> colorsItem =
                                          snapshot2.data;

                                      if (snapshot2.connectionState ==
                                          ConnectionState.waiting) {
                                        return CircularProgressIndicator();
                                      }

                                      late List<ColorClass> selectedColor = [
                                        colorsItem[colorIdnya[0]! - 1],
                                        colorsItem[colorIdnya[1]! - 1],
                                        colorsItem[colorIdnya[2]! - 1]
                                      ];

                                      print(selectedColor[0]
                                          .colorHex!
                                          .substring(1));
                                      print(selectedColor[1].colorHex);
                                      print(selectedColor[2].colorHex);
                                      print('test');

                                      if (snapshot2.hasData) {
                                        // return Container();
                                        return Wrap(
                                          direction: Axis.horizontal,
                                          children: List.generate(3, (index) {
                                            return InkWell(
                                              onTap: () {
                                                setState(() {
                                                  selectedIndex = index;
                                                });
                                              },
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                    right: 10),
                                                child: selectedIndex == index
                                                    ? ProductColorBorder(
                                                        productColor:
                                                            selectedColor[index]
                                                                .colorHex!)
                                                    : ProductColor(
                                                        productColor:
                                                            selectedColor[index]
                                                                .colorHex!),
                                              ),
                                            );
                                          }),
                                        );
                                      } else {
                                        return const CircularProgressIndicator();
                                      }
                                    },
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
                                        Wrap(
                                          direction: Axis.horizontal,
                                          children: List.generate(3, (index2) {
                                            return InkWell(
                                              onTap: () {
                                                setState(() {
                                                  selectedIndex2 = index2;
                                                });
                                              },
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                    right: 10),
                                                child: selectedIndex2 == index2
                                                    ? ProductSizeSelected(
                                                        Size: sizes[index2])
                                                    : ProductSize(
                                                        Size: sizes[index2]),
                                              ),
                                            );
                                          }),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
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
                // FutureBuilder(
                //   future: products,
                //   builder: (BuildContext context, AsyncSnapshot snapshot) {
                //      ;
                //   },
                // ),

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
          GestureDetector(
            onTap: () {
              setState(() {
                added = 'ADDED TO BASKET';
              });
            },
            child: Row(
              children: [
                Image(
                  image: AssetImage('images/Shop_Detailed_View_Plus.png'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  added,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
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
              color: Colors.white,
            ),
          )
        ]),
      ),
    );
  }
}
