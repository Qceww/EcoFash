import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogGridView2 extends StatefulWidget {
  const BlogGridView2({Key? key}) : super(key: key);

  @override
  State<BlogGridView2> createState() => _BlogGridView2State();
}

class _BlogGridView2State extends State<BlogGridView2> {
  final List<Map<String, String>> blogTitles = [
    {
      'title': 'Blog Title 1',
      'tag': 'News',
    },
    {
      'title': 'Blog Title 2',
      'tag': 'Fact',
    },
    {
      'title': 'Blog Title 3',
      'tag': 'Opinion',
    },
    {
      'title': 'Blog Title 4',
      'tag': 'Review',
    },
    {
      'title': 'Blog Title 5',
      'tag': 'Tips',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        // width: MediaQuery.of(context).size.width,
                        width: 340,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/Blog_grid_view_1.png'),
                              fit: BoxFit.cover),
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
                                      '2021 Style Guide: The Biggest Fall Trends',
                                      style: GoogleFonts.tenorSans(
                                          textStyle:
                                              const TextStyle(fontSize: 16),
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                        width: 340,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black.withOpacity(0.5),
                                        width: 0.0),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    '#Fashion',
                                    style: GoogleFonts.tenorSans(
                                      textStyle:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black.withOpacity(0.5),
                                        width: 0.0),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    '#Tips',
                                    style: GoogleFonts.tenorSans(
                                      textStyle:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '4 Days Ago',
                                  style: GoogleFonts.tenorSans(
                                    textStyle:
                                        const TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
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
