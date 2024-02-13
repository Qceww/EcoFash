import 'package:figma/pages/home_page.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
      
                //Logo
                Text(
                  "EcoFash",
                  style: GoogleFonts.zenAntique(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
      
                const SizedBox(height: 50),
      
                //Sign Up
                Text(
                  "Sign Up",
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
      
                //divider
                const Divider(
                  indent: 130,
                  endIndent: 130,
                ),
      
                const SizedBox(height: 20),
      
                //First Last Name
                const Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "First name"),
                        ),
                      ),
                      SizedBox(width: 25),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "Last name"),
                        ),
                      ),
                    ],
                  ),
                ),
      
                //Email
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Email",
                    ),
                  ),
                ),
      
                //Phone Number
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Phone number",
                    ),
                  ),
                ),
      
                //Password
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Password",
                    ),
                  ),
                ),
      
                //Confirm Password
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Confirm password",
                    ),
                  ),
                ),
      
                const SizedBox(height: 20.0),
      
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text("Sign In"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
