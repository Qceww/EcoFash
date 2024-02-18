import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reward_widget extends StatelessWidget {
  const Reward_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(230, 233, 238, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage("images/Reward_image.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LAMEREI",
                    style: GoogleFonts.tenorSans(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 5,
                      ),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Recycle Boucle Knit",
                    style: GoogleFonts.tenorSans(
                      textStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 7),
                  Text(
                    "100 Points",
                    style: GoogleFonts.tenorSans(
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(221, 133, 96, 1),
                        fontSize: 18,
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
    );
  }
}
