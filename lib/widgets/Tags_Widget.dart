import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tags extends StatelessWidget {
  String tag1;
  String tag2;

  Tags({
    super.key,
    required this.tag1,
    required this.tag2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(7),
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black.withOpacity(0.5),
              width: 0.0,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "# " + tag1,
            style: GoogleFonts.tenorSans(
              textStyle: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(7),
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black.withOpacity(0.5),
              width: 0.0,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "# " + tag2,
            style: GoogleFonts.tenorSans(
              textStyle: const TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
