import 'package:figma/classes/redeemedReward.dart';
import 'package:figma/classes/reward.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/widgets/reward_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  @override
  void initState() {
    super.initState();
  }

  late Future<List<Reward>?> rewardList = getRewards();

  late Future<List<RedeemedReward>?> redeemedRewardList =
      getRedeemedRewards(currentUser!.userId!);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: redeemedRewardList,
      builder: (BuildContext context,
          AsyncSnapshot<List<RedeemedReward>?> snapshot) {
        if (snapshot.hasData) {
          late List<Reward>? rewards = [];
          late List<RedeemedReward>? redeemedRewards = [];
          late Map<int, Reward> rewardMap = {};
          late List<Reward> promoList = [];
          redeemedRewards = snapshot.data;
          return FutureBuilder(
            future: rewardList,
            builder:
                (BuildContext context, AsyncSnapshot<List<Reward>?> snapshot) {
              if (snapshot.hasData) {
                rewards = snapshot.data;

                for (Reward reward in rewards!) {
                  rewardMap[reward!.rewardId!] = reward;
                }

                promoList = [];
                for (RedeemedReward item in redeemedRewards!) {
                  // Check if rewardId exists in the rewardMap
                  if (rewardMap.containsKey(item.rewardId)) {
                    promoList.add(rewardMap[item.rewardId]!);
                  }
                }

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
                                    "YOUR PROMO",
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
                              itemCount: promoList.length,
                              itemBuilder: (context, index) {
                                final reward = promoList[index];
                                return RewardDetail(
                                    reward: reward, customerId: 1);
                              },
                            ),
                          ),
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
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
