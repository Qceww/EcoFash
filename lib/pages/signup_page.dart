import 'package:figma/classes/user.dart';
import 'package:figma/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                  onPressed: () async {
                  
                  final firstName = _firstNameController.text;
                  final lastName = _lastNameController.text;
                  final email = _emailController.text;
                  final phone = _phoneController.text;
                  final password = _passwordController.text;
                  final confirmPassword = _confirmPasswordController.text;


                  registerUser(firstName, lastName, email, phone, password, confirmPassword);

                  
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black
                  ),
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
