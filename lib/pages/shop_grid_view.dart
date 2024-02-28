import 'package:figma/classes/product.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextGoogle extends StatelessWidget {
  String name;
  TextGoogle({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Text(
        name,
        style: GoogleFonts.tenorSans(
          textStyle: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class ShopGridView extends StatefulWidget {
  const ShopGridView({super.key});

  @override
  State<ShopGridView> createState() => _ShopGridViewState();
}

class _ShopGridViewState extends State<ShopGridView> {
  Future<List<Product>?> products = getProduct();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: const EcofashBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Men',
                        style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        'Women',
                        style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        'Kids',
                        style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 232, 232),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 0,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            icon: Icon(
                              Icons.search_sharp,
                              size: 30,
                            ),
                            hintText: 'Search items'),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FutureBuilder(
                      future: products,
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        List<Product>? productItems = snapshot.data;

                        if (snapshot.hasData) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  "This Week' Highlights",
                                  style: GoogleFonts.tenorSans(
                                    textStyle: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  for (int i = 0; i < 2; i++)
                                    GridViews(
                                        productId: productItems![i].productId,
                                        name: productItems![i].productName,
                                        price: productItems![i].productPrice,
                                        url: productItems![i].picture1),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextGoogle(name: 'Best Seller'),
                              Row(
                                children: [
                                  for (int j = 2; j < 4; j++)
                                    GridViews(
                                        productId: productItems![j].productId,
                                        name: productItems![j].productName,
                                        price: productItems![j].productPrice,
                                        url: productItems![j].picture1),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: const BorderSide(
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      'Show More',
                                      style: GoogleFonts.tenorSans(
                                        textStyle: const TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextGoogle(name: 'More For You'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  for (int k = 4; k < 6; k++)
                                    GridViews(
                                        productId: productItems![k].productId,
                                        name: productItems![k].productName,
                                        price: productItems![k].productPrice,
                                        url: productItems![k].picture1),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  for (int ii = 6; ii < 8; ii++)
                                    GridViews(
                                        productId: productItems![ii].productId,
                                        name: productItems![ii].productName,
                                        price: productItems![ii].productPrice,
                                        url: productItems![ii].picture1),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  for (int ij = 8; ij < 10; ij++)
                                    GridViews(
                                        productId: productItems![ij].productId,
                                        name: productItems![ij].productName,
                                        price: productItems![ij].productPrice,
                                        url: productItems![ij].picture1),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side: const BorderSide(
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      'Show More',
                                      style: GoogleFonts.tenorSans(
                                        textStyle: const TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        } else {
                          return const CircularProgressIndicator();
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
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
    );
  }
}
