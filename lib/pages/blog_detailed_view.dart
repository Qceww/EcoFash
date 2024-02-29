import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/Footer.dart';
import 'package:figma/widgets/reward_detail_widget.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:flutter/material.dart';
import 'package:figma/widgets/Tags_Widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Blogdetailedview extends StatelessWidget {
  const Blogdetailedview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/Blog_grid_view_1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                RewardDetailWidget(
                  title: "2021 Style Guide: The Biggest Fall Trends",
                  content:
                      "You guys know how much I love mixing high and low-end – it’s the best way to get the most bang for your buck while still elevating your wardrobe. The same goes for handbags! And honestly they are probably the best pieces to mix and match. I truly think the key to completing a look is with a great bag and I found so many this year that I wanted to share a round-up of my most worn handbags.",
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    spacing: 10,
                    children: [
                      Text(
                        'Posted by OpenFashion',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.tenorSans(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        '|',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.tenorSans(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text(
                        '3 Days Ago',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.tenorSans(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Tags(
                        tag1: "Tag 1",
                        tag2: "Tag 2",
                      ),
                    ],
                  ),
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
