import 'package:figma/classes/user.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/pages/home_page.dart';
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
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          controller: _firstNameController,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "First name"),
                        ),
                      ),
                      const SizedBox(width: 25),
                      Flexible(
                        child: TextField(
                          controller: _lastNameController,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "Last name"),
                        ),
                      ),
                    ],
                  ),
                ),

                //Email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Email",
                    ),
                  ),
                ),

                //Phone Number
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Phone number",
                    ),
                  ),
                ),

                //Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Password",
                    ),
                  ),
                ),

                //Confirm Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(
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

                    print('$firstName - $lastName - $email - $phone - $password - $confirmPassword');

                    User? user = await registerUser(firstName, lastName, email, phone, password, confirmPassword);
                  
                    if(user is User){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) => const HomePage(),
                          ),
                        );
                    } else {
                      print("Registration Failed!");
                    }

                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
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
