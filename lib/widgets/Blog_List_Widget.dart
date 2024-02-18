import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blog_List_Widget extends StatelessWidget {
  const Blog_List_Widget({
    super.key,
    required this.blog,
  });

  final Map<String, dynamic> blog;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 340,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/Blog_grid_view_1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 340,
            height: 40,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    blog['title'] ?? '',
                    style: GoogleFonts.tenorSans(
                      textStyle: const TextStyle(fontSize: 16),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
