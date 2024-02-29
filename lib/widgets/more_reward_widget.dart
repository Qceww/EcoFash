import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class more_reward_widget extends StatelessWidget {
  String rewardname;
  String rewardprice;
  more_reward_widget({
    super.key,
    required this.rewardname,
    required this.rewardprice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/Reward_image.png')),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
        ),
        Container(
          height: 70,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  rewardname,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  rewardprice + " Points",
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                      color: Color.fromRGBO(221, 133, 96, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
