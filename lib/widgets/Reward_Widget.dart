import 'package:figma/classes/reward.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/pages/checkout_page.dart';
import 'package:figma/pages/reward_detail_page.dart';
import 'package:figma/pages/reward_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reward_widget extends StatelessWidget {
  String rewardname;
  String rewarddescription;
  String rewardprice;
  Reward_widget({
    super.key,
    required this.rewardname,
    required this.rewarddescription,
    required this.rewardprice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => const RewardDetailPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromRGBO(230, 233, 238, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/Reward_image.png')),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      rewardname.toUpperCase(),
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 5,
                        ),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(height: 5),
                    Text(
                      rewarddescription,
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 7),
                    Text(
                      rewardprice + " Points",
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(221, 133, 96, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 7),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RewardDetail extends StatefulWidget {
  Reward reward;
  int customerId;

  RewardDetail({Key? key, required this.reward, required this.customerId})
      : super(key: key);

  @override
  State<RewardDetail> createState() => _RewardDetailState();
}

class _RewardDetailState extends State<RewardDetail> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int promoApplied = 0;
    return GestureDetector(
      onTap: () {
        setState(() {
          putPromo(widget.reward);
        });
        Navigator.of(context).pop(context);
      },
      child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.875,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 232, 232),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                  child: Text(
                    "${widget.reward.rewardName}",
                    style: GoogleFonts.zenAntique(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
                  child: Text(
                    "Expiry Date : ${widget.reward.rewardExpiry}",
                    style: GoogleFonts.zenAntique(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 20.0),
                  child: Text(
                    "Location : ${widget.reward.rewardLocation}",
                    style: GoogleFonts.zenAntique(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
