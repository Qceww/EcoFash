import 'package:figma/classes/reward.dart';
import 'package:figma/widgets/Reward_Widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardPage extends StatelessWidget {
  int customerId = -1;
  final List<Reward> redeemedRewards = [
    Reward(
        rewardId: 1,
        rewardName: 'Discount 25%',
        rewardExpiry: '12/12/2024',
        rewardLocation: 'AEON Sentul'),
    Reward(
        rewardId: 1,
        rewardName: 'Discount 25%',
        rewardExpiry: '12/12/2024',
        rewardLocation: 'AEON Sentul'),
  ];
  RewardPage({Key? key, required this.customerId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: IconButton(
                      onPressed: () {
                        // Handle closing the cart
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                      child: Text(
                        "ORDER HISTORY",
                        style: GoogleFonts.zenAntique(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: redeemedRewards.length,
                  itemBuilder: (context, index) {
                    final reward = redeemedRewards[index];
                    return RewardDetail(reward: reward, customerId: 1);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
