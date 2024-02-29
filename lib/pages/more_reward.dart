import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma/widgets/Footer.dart';
import 'package:figma/widgets/more_reward_widget.dart';

class Morereward extends StatelessWidget {
  Morereward({Key? key}) : super(key: key);

  final List<more_reward_widget> rewards = [
    more_reward_widget(
      rewardname: "50% Voucher",
      rewardprice: "100",
    ),
    more_reward_widget(
      rewardname: "20% Voucher",
      rewardprice: "30",
    ),
    more_reward_widget(
      rewardname: "23% Voucher",
      rewardprice: "87",
    ),
    more_reward_widget(
      rewardname: "25% Voucher",
      rewardprice: "66",
    ),
    more_reward_widget(
      rewardname: "89% Voucher",
      rewardprice: "50",
    ),
    more_reward_widget(
      rewardname: "20% Voucher",
      rewardprice: "30",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 233, 238, 1),
      drawer: Navbar(),
      appBar: EcofashBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    runAlignment: WrapAlignment.center,
                    children: [
                      for (var reward in rewards)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: Column(
                            children: [
                              reward,
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Footer(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
