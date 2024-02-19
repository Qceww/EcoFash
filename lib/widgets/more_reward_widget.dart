import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class more_reward_widget extends StatelessWidget {
  const more_reward_widget({
    super.key,
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
          height: 60,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
          child: Column(
            children: [
              Text(
                "50% Voucher",
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
                "100 Points",
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
      ],
    );
  }
}
