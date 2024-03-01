import 'package:figma/pages/blog_detailed_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blog_List_Widget extends StatelessWidget {
  String title;
  String tag1;
  String tag2;

  Blog_List_Widget({
    super.key,
    required this.title,
    required this.tag1,
    required this.tag2,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => const Blogdetailedview(),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            height: 200,
            width: 340,
            decoration: const BoxDecoration(
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
                          title,
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Row(
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
            ),
          ),
        ],
      ),
    );
  }
}
