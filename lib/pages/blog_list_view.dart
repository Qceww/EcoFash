import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:figma/widgets/Blog_List_Widget.dart';
import 'package:figma/widgets/Tags_Widget.dart';
import 'package:figma/widgets/Footer.dart';

class Bloglistview extends StatefulWidget {
  const Bloglistview({Key? key}) : super(key: key);

  @override
  State<Bloglistview> createState() => _BloglistviewState();
}

class _BloglistviewState extends State<Bloglistview> {
  final List<Map<String, dynamic>> blogEntries = [
    {
      'title': 'Blog Title 1',
      'tags': ['News', 'Fashion'],
    },
    {
      'title': 'Blog Title 2',
      'tags': ['Fact', 'Tips'],
    },
    {
      'title': 'Blog Title 3',
      'tags': ['Opinion', 'Fashion'],
    },
    {
      'title': 'Blog Title 4',
      'tags': ['Review', 'Tips'],
    },
    {
      'title': 'Blog Title 5',
      'tags': ['Tips', 'Fashion'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Navbar(),
      appBar: EcofashBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                //=============================Judul================================
                Container(
                  // padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'BLOG',
                        style: GoogleFonts.tenorSans(
                          textStyle: TextStyle(
                            fontSize: 24, // Adjust the font size as needed
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Image(image: AssetImage('images/Home_page_garis.png')),
                      SizedBox(height: 5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (var tag in [
                              'Tag 1',
                              'Tag 2',
                              'Tag 3',
                              'Tag 4',
                              'Tag 5',
                              'Tag 6'
                            ])
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // munculin berita yang sesuai
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shadowColor: Colors.transparent,
                                    primary: Colors.black12,
                                    onPrimary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: Text(
                                    tag,
                                    style: GoogleFonts.tenorSans(
                                      textStyle: TextStyle(
                                        fontSize:
                                            15, // Adjust the font size as needed
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // ====================================Isi==========================================
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      for (var blog in blogEntries)
                        Column(
                          children: [
                            Blog_List_Widget(blog: blog),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 5, 0),
                              width: 340,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Tags(blog: blog),
                                  Row(
                                    children: [
                                      Text(
                                        '4 Days Ago',
                                        style: GoogleFonts.tenorSans(
                                          textStyle: const TextStyle(
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                    ],
                  ),
                ),

                // =============Pencetan Load more================
                Container(
                  // Ukuran container Buttonnya
                  width: 270,
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      side: BorderSide(color: Colors.grey, width: 2.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "LOAD MORE",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Add space between "LOAD MORE" and "+"
                        Text(
                          "+",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ============================Footer===============================
                Footer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
