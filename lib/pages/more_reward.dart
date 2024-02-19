import 'package:figma/widgets/Ecofash_bar.dart';
import 'package:figma/widgets/burger_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma/widgets/Footer.dart';
import 'package:figma/widgets/more_reward_widget.dart';

class Morereward extends StatefulWidget {
  const Morereward({Key? key}) : super(key: key);

  @override
  State<Morereward> createState() => _MorerewardState();
}

class _MorerewardState extends State<Morereward> {
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
                      more_reward_widget(),
                      more_reward_widget(),
                      more_reward_widget(),
                      more_reward_widget(),
                      more_reward_widget(),
                      more_reward_widget(),
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
