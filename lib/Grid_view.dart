import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridView extends StatelessWidget {
  String name;
  int price;
  String url;
  GridView(
      {super.key, required this.name, required this.price, required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage('images/Home_page_new_arrival_1.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '21WN',
                    style: GoogleFonts.tenorSans(),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'reversible angora cardigan',
                    style: GoogleFonts.tenorSans(),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '\$120',
                    style: GoogleFonts.tenorSans(),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
