import 'package:figma/classes/reward.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/services/http_services.dart';
import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma/widgets/reward_widget.dart';
import 'package:figma/widgets/Footer.dart';

class RewardPage extends StatefulWidget {
  RewardPage({Key? key}) : super(key: key);

  @override
  State<RewardPage> createState() => _RewardPageState();
}

@override
void initState() {
  loginUser(currentUser!.email!, currentUser!.password!);
}

class _RewardPageState extends State<RewardPage> {
  // final List<Reward_widget> rewards = [
  Future<List<Reward>?> rewardList = getRewards();

  @override
  Widget build(BuildContext context) {
    List<Reward_widget> rewards = [];
    return FutureBuilder(
      future: rewardList,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print(snapshot.data);
        if (snapshot.hasData) {
          List<Reward>? rewardListItem = snapshot.data;
          rewards = [];
          for (Reward rewardItem in rewardListItem!) {
            rewards.add(Reward_widget(
              rewardId: rewardItem.rewardId!,
              rewardname: rewardItem.rewardName!,
              rewarddescription: rewardItem.rewardLocation!,
              rewardprice: rewardItem.rewardCost!,
              rewardExpiry: rewardItem.rewardExpiry!,
            ));
          }
          return Scaffold(
            backgroundColor: Colors.white,
            drawer: Navbar(),
            appBar: const EcofashBar(),
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
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("images/Reward_header_image.png"),
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
                                      "${currentUser!.memberPoint!} Point",
                                      style: GoogleFonts.tenorSans(
                                        textStyle: const TextStyle(
                                          color:
                                              Color.fromRGBO(221, 133, 96, 1),
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
                                      image: AssetImage(
                                          "images/Reward_info_icon.png"),
                                      color: Color.fromRGBO(221, 133, 96, 1),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Image(
                                  image: AssetImage(
                                      "images/Reward Garis Panjang.png"),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                    const SizedBox(height: 100),
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
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        for (var reward in rewards)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Column(
                              children: [
                                reward,
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const Footer(),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );

    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   drawer: Navbar(),
    //   appBar: const EcofashBar(),
    //   body: SafeArea(
    //     child: SingleChildScrollView(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.stretch,
    //         children: [
    //           Stack(
    //             clipBehavior: Clip.none,
    //             children: [
    //               Container(
    //                 height: 200,
    //                 decoration: const BoxDecoration(
    //                   image: DecorationImage(
    //                     image: AssetImage("images/Reward_header_image.png"),
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //               ),
    //               Positioned(
    //                 top: 150,
    //                 left: 20,
    //                 right: 20,
    //                 height: 123,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(15),
    //                     color: Color.fromRGBO(230, 233, 238, 1),
    //                   ),
    //                   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    //                   child: Column(
    //                     children: [
    //                       Row(
    //                         mainAxisAlignment: MainAxisAlignment.start,
    //                         children: [
    //                           Text(
    //                             "XXX Point",
    //                             style: GoogleFonts.tenorSans(
    //                               textStyle: const TextStyle(
    //                                 color: Color.fromRGBO(221, 133, 96, 1),
    //                                 fontSize: 20,
    //                                 fontWeight: FontWeight.w500,
    //                               ),
    //                             ),
    //                           ),
    //                           const SizedBox(
    //                             width: 5,
    //                           ), // Add space between "LOAD MORE" and "+"
    //                           Image(
    //                             height: 40,
    //                             image:
    //                                 AssetImage("images/Reward_info_icon.png"),
    //                             color: Color.fromRGBO(221, 133, 96, 1),
    //                           )
    //                         ],
    //                       ),
    //                       SizedBox(
    //                         height: 10,
    //                       ),
    //                       Image(
    //                         image:
    //                             AssetImage("images/Reward Garis Panjang.png"),
    //                       ),
    //                       SizedBox(
    //                         height: 15,
    //                       ),
    //                       Row(
    //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                         children: [
    //                           Text(
    //                             "More Reward",
    //                             style: GoogleFonts.tenorSans(
    //                               textStyle: const TextStyle(
    //                                 color: Colors.black,
    //                                 fontSize: 16,
    //                                 fontWeight: FontWeight.w500,
    //                               ),
    //                             ),
    //                           ),
    //                           const SizedBox(
    //                             width: 10,
    //                           ), // Add space between "LOAD MORE" and "+"
    //                           Image(
    //                             // height: 40,
    //                             image: AssetImage(
    //                                 "images/Reward Garis Pendek.png"),
    //                           ),
    //                           const SizedBox(
    //                             width: 10,
    //                           ),
    //                           Text(
    //                             "Point History",
    //                             style: GoogleFonts.tenorSans(
    //                               textStyle: const TextStyle(
    //                                 color: Colors.black,
    //                                 fontSize: 16,
    //                                 fontWeight: FontWeight.w500,
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           SizedBox(height: 100),
    //           Padding(
    //             padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
    //             child: Text(
    //               "REWARD AND BENEFITS",
    //               style: GoogleFonts.tenorSans(
    //                 textStyle: const TextStyle(
    //                   color: Colors.black,
    //                   fontSize: 20,
    //                   fontWeight: FontWeight.w500,
    //                 ),
    //               ),
    //             ),
    //           ),
    //           SizedBox(height: 10),
    //           Column(
    //             children: [
    //               for (var reward in rewards)
    //                 Padding(
    //                   padding: const EdgeInsets.symmetric(vertical: 0),
    //                   child: Column(
    //                     children: [
    //                       reward,
    //                       SizedBox(height: 10),
    //                     ],
    //                   ),
    //                 ),
    //             ],
    //           ),
    //           Footer(),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
