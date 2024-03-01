import 'package:figma/pages/reward_detail.dart';
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
            builder: (BuildContext context) => const RewardDetail(),
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
