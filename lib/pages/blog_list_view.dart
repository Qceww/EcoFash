import 'package:figma/classes/blog.dart';
import 'package:figma/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:figma/widgets/Blog_List_Widget.dart';
import 'package:figma/widgets/Footer.dart';

class Bloglistview extends StatelessWidget {
  Future<List<Blog>?> blogItems = getBlog();
  Bloglistview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Blog> blogs = [];

    final List<String> tags = [
      'Fashion',
      'Trending',
      'Latest',
      'Women',
      'Men',
    ];

    return FutureBuilder(
      future: blogItems,
      builder: (BuildContext context, AsyncSnapshot<List<Blog>?> snapshot) {
        if (snapshot.hasData) {
          blogs = snapshot.data!;
          return Scaffold(
            backgroundColor: Colors.white,
            drawer: Navbar(),
            appBar: const EcofashBar(),
            body: SafeArea(
              child: ListView(
                children: [
                  SizedBox(height: 10),
                  //=============================Judul================================
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'BLOG',
                          style: GoogleFonts.tenorSans(
                            textStyle: TextStyle(
                              fontSize: 24,
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
                                      // Handle tag button press
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
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: blogs.length,
                          itemBuilder: (context, index) {
                            final blog = blogs[index];
                            return Column(
                              children: [
                                Blog_List_Widget(
                                  id: blog.blogId!,
                                  title: blog.blogName!,
                                  tag1: blog.tag1!,
                                  tag2: blog.tag2!,
                                ),
                                SizedBox(height: 10),
                              ],
                            );
                          },
                        ),
                        // =============Pencetan Load more================
                        Container(
                          width: 270,
                          height: 57,
                          child: ElevatedButton(
                            onPressed: () {
                              // Load more button pressed
                            },
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
                                const SizedBox(width: 10),
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
                        SizedBox(height: 20),
                        // ============================Footer===============================
                        Footer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
