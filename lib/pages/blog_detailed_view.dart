import 'package:figma/classes/blog.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/Footer.dart';
import 'package:figma/widgets/reward_detail_widget.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:flutter/material.dart';
import 'package:figma/widgets/Tags_Widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Blogdetailedview extends StatelessWidget {
  int id;
  Blogdetailedview({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<Blog?> blogItems = getDetailedBlog(id);
    late Blog blog;

    return FutureBuilder(
      future: blogItems,
      builder: (BuildContext context, AsyncSnapshot<Blog?> snapshot) {
        if (snapshot.hasData) {
          blog = snapshot.data!;
          return Scaffold(
            drawer: Navbar(),
            appBar: EcofashBar(),
            backgroundColor: Colors.white,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        height: 250,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(blog.picture.toString()),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      RewardDetailWidget(
                        title: blog.blogName!,
                        content:
                            blog.blogDescription!,
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          spacing: 10,
                          children: [
                            Text(
                              'Posted by ${blog.authorName}',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.tenorSans(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Text(
                              '|',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.tenorSans(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Text(
                              blog.created_at!,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.tenorSans(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Tags(
                              tag1: blog.tag1!,
                              tag2: blog.tag2!,
                            ),
                          ],
                        ),
                      ),
                      Footer(),
                    ],
                  ),
                ),
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
