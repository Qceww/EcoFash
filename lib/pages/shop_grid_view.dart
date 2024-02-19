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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GridViews(
                            productId: 1,
                            name: 'reversible angora cardigan',
                            price: 120,
                            url: 'Home_page_new_arrival_1.png'),
                        GridViews(
                            productId: 1,
                            name: 'reversible angora cardigan',
                            price: 120,
                            url: 'Home_page_new_arrival_1.png'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextGoogle(name: 'Best Seller'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GridViews(
                            productId: 1,
                            name: 'reversible angora cardigan',
                            price: 120,
                            url: 'Home_page_new_arrival_1.png'),
                        GridViews(
                            productId: 1,
                            name: 'reversible angora cardigan',
                            price: 120,
                            url: 'Home_page_new_arrival_1.png'),
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
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Colors.grey),
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
                        GridViews(
                            productId: 1,
                            name: 'reversible angora cardigan',
                            price: 120,
                            url: 'Home_page_new_arrival_1.png'),
                        GridViews(
                            productId: 1,
                            name: 'reversible angora cardigan',
                            price: 120,
                            url: 'Home_page_new_arrival_1.png'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GridViews(
                            productId: 1,
                            name: 'reversible angora cardigan',
                            price: 120,
                            url: 'Home_page_new_arrival_1.png'),
                        GridViews(
                            productId: 1,
                            name: 'reversible angora cardigan',
                            price: 120,
                            url: 'Home_page_new_arrival_1.png'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GridViews(
                            productId: 1,
                            name: 'reversible angora cardigan',
                            price: 120,
                            url: 'Home_page_new_arrival_1.png'),
                        GridViews(
                            productId: 1,
                            name: 'reversible angora cardigan',
                            price: 120,
                            url: 'Home_page_new_arrival_1.png'),
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
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Colors.grey),
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
