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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
