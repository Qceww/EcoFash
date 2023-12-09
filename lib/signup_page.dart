import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.red,
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                height: 70,
              ),
              Container(
                color: Colors.white,
                child: Center(
                  child: Text(
                    "EcoFash",
                    style: GoogleFonts.zenAntique(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 70,
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      "Sign Up",
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      indent: 130,
                      endIndent: 130,
                    )
                  ],
                ),
              ),
              // const SizedBox(
              //   child: Row(
              //     children: [
              //       TextField(
              //         decoration: InputDecoration(
              //           border: UnderlineInputBorder(),
              //           labelText: "First Name"
              //         ),
              //       ),
              //       TextField(
              //         decoration: InputDecoration(
              //           border: UnderlineInputBorder(),
              //           labelText: "Last Name"
              //         ),
              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
