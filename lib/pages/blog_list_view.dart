import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:figma/widgets/Blog_List_Widget.dart';
// import 'package:figma/widgets/Tags_Widget.dart';
import 'package:figma/widgets/Footer.dart';

class Bloglistview extends StatelessWidget {
  const Bloglistview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Blog_List_Widget> blogs = [
      Blog_List_Widget(
        title: "Blog Title 1",
        tag1: "Tag 1",
        tag2: "Tag2",
      ),
      Blog_List_Widget(
        title: "Blog Title 2",
        tag1: "Tag 1",
        tag2: "Tag2",
      ),
    ];

    final List<String> tags = [
      'Tag 1',
      'Tag 2',
      'Tag 3',
      'Tag 4',
      'Tag 5',
      'Tag 6'
    ];

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
                            for (var tag in tags)
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
                                        fontSize: 15,
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
                      Column(
                        children: [
                          for (var blog in blogs)
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: Column(
                                children: [
                                  blog,
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
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
