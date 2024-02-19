import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma/widgets/Reward_Widget.dart';
import 'package:figma/widgets/Footer.dart';

class Reward extends StatelessWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Navbar(),
      appBar: EcofashBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/Reward_header_image.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 20,
                    right: 20,
                    height: 123,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(230, 233, 238, 1),
                      ),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "XXX Point",
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                    color: Color.fromRGBO(221, 133, 96, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ), // Add space between "LOAD MORE" and "+"
                              Image(
                                height: 40,
                                image:
                                    AssetImage("images/Reward_info_icon.png"),
                                color: Color.fromRGBO(221, 133, 96, 1),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image(
                            image:
                                AssetImage("images/Reward Garis Panjang.png"),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "More Reward",
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ), // Add space between "LOAD MORE" and "+"
                              Image(
                                // height: 40,
                                image: AssetImage(
                                    "images/Reward Garis Pendek.png"),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Point History",
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "REWARD AND BENEFITS",
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Reward_widget(),
              SizedBox(height: 10),
              Reward_widget(),
              SizedBox(height: 10),
              Reward_widget(),
              SizedBox(height: 10),
              Reward_widget(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
