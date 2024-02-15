import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tags extends StatelessWidget {
  const Tags({
    super.key,
    required this.blog,
  });

  final Map<String, dynamic> blog;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var tag in blog['tags'])
          Container(
            padding: const EdgeInsets.all(3),
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
              '#$tag',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
      ],
    );
  }
}
