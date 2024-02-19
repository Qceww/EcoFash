import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma/widgets/Footer.dart';
import 'package:figma/widgets/Widgets.dart';
import 'package:figma/widgets/reward_detail_widget.dart';

class RewardDetail extends StatefulWidget {
  const RewardDetail({super.key});

  @override
  State<RewardDetail> createState() => _RewardDetailState();
}

class _RewardDetailState extends State<RewardDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -50,
                      child: Image(
                        image: AssetImage("images/Backward_arrow.png"),
                      ),
                    ),
                    Text(
                      "REWARD DETAIL",
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 5),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/Reward_image.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet",
                        style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        "Valid Until DD/MM/YYYY",
                        style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Image(
                        image: AssetImage("images/Reward Garis Panjang 2.png"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
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
                    ],
                  ),
                  // ProductInformation(
                  //     title: "Location of Use", content: "Contetn"),
                  RewardDetailWidget(
                    title: "Location of Use".toUpperCase(),
                    content:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum nec libero ut pulvinar. Pellentesque placerat, mi ac iaculis ultrices, tortor nibh semper nisi, eget luctus nunc velit vitae lacus. Proin posuere, magna et pellentesque venenatis, ligula lorem egestas augue, eget porttitor metus nibh cursus lacus. Curabitur vel mi at tellus gravida sollicitudin eu sed elit.",
                  ),
                  RewardDetailWidget(
                    title: "Terms & Condition".toUpperCase(),
                    content:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum nec libero ut pulvinar. Pellentesque placerat, mi ac iaculis ultrices, tortor nibh semper nisi, eget luctus nunc velit vitae lacus. Proin posuere, magna et pellentesque venenatis, ligula lorem egestas augue, eget porttitor metus nibh cursus lacus. Curabitur vel mi at tellus gravida sollicitudin eu sed elit.",
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  Container(
                    // Ukuran container Buttonnya
                    width: 270,
                    height: 57,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shadowColor: Colors.transparent,
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        side: BorderSide(color: Colors.grey, width: 2.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "EXCHANGE",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Footer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
