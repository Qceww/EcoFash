import 'package:figma/Ecofash_bar.dart';
import 'package:figma/burger_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blogdetailedview extends StatefulWidget {
  const Blogdetailedview({super.key});

  @override
  State<Blogdetailedview> createState() => _BlogdetailedviewState();
}

class _BlogdetailedviewState extends State<Blogdetailedview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: EcofashBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  height: 250,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Blog_grid_view_1.png'),
                        fit: BoxFit.fill),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  // color: Colors.amber,
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          '2021 Style Guide: The Biggest Fall Trends'
                              .toUpperCase(),
                          textAlign: TextAlign.left,
                          style: GoogleFonts.tenorSans(
                            textStyle: TextStyle(
                              fontSize: 20, // Adjust the font size as needed
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'You guys know how much I love mixing high and low-end – it’s the best way to get the most bang for your buck while still elevating your wardrobe. The same goes for handbags! And honestly they are probably the best pieces to mix and match. I truly think the key to completing a look is with a great bag and I found so many this year that I wanted to share a round-up of my most worn handbags.',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.tenorSans(
                            textStyle: TextStyle(
                              fontSize: 18, // Adjust the font size as needed
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width - 30,
                  height: MediaQuery.of(context).size.height - 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('images/Blog_Detailed_View_Image_2.png'),
                        fit: BoxFit.cover),
                  ),
                ),

                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'I found this Saint Laurent canvas handbag this summer and immediately fell in love. The neutral fabrics are so beautiful and I like how this handbag can also carry into fall. The mini Fendi bucket bag with the sheer fabric is so fun and such a statement bag. Also this DeMellier off white bag is so cute to carry to a dinner with you or going out, it’s small but not too small to fit your phone and keys still.',
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.tenorSans(
                            textStyle: TextStyle(
                              fontSize: 18, // Adjust the font size as needed
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Container(
                  // color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Container(
                        child: Text(
                          'Posted by OpenFashion',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.tenorSans(
                            textStyle: TextStyle(
                              fontSize: 12, // Adjust the font size as needed
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '|',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.tenorSans(
                            textStyle: TextStyle(
                              fontSize: 14, // Adjust the font size as needed
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '3 Days Ago',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.tenorSans(
                            textStyle: TextStyle(
                              fontSize: 12, // Adjust the font size as needed
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(15),
                  child: Wrap(
                    spacing: 15,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.5),
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                        child: Text(
                          '#Fashion',
                          style: GoogleFonts.tenorSans(
                            textStyle: const TextStyle(color: Colors.grey),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.5),
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                        child: Text(
                          '#Tips',
                          style: GoogleFonts.tenorSans(
                            textStyle: const TextStyle(color: Colors.grey),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
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
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
