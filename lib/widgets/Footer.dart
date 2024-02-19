import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
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
    );
  }
}
