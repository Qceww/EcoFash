import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Home_page_1.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Luxury",
                          style: GoogleFonts.zenAntique(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "Fashion",
                          style: GoogleFonts.zenAntique(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Text(
                          "Series",
                          style: GoogleFonts.zenAntique(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black.withOpacity(0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(),
                              )),
                          child: Text(
                            "EXPLORE COLLECTION",
                            style: GoogleFonts.tenorSans(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        const Image(
                            image: AssetImage(
                                'images/Home_page_1_Indicator_1.png')),
                        const SizedBox(
                          height: 10,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 100,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'NEW ARRIVAL',
                          style: GoogleFonts.tenorSans(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        const Image(
                          image: AssetImage('images/Home_page_garis.png'),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'All',
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Apparel',
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Dress',
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Tshirt',
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Bag',
                                style: GoogleFonts.tenorSans(
                                  textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: const Center(
                                    child: Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/Home_page_new_arrival_1.png'),
                                        ),
                                        Text(
                                          '21WN reversible angora cardigan',
                                          textAlign: TextAlign.center,
                                        ),
                                        Text('\$120')
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: const Center(
                                    child: Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/Home_page_new_arrival_1.png'),
                                        ),
                                        Text(
                                          '21WN reversible angora cardigan',
                                          textAlign: TextAlign.center,
                                        ),
                                        Text('\$120'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: const Center(
                                    child: Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/Home_page_new_arrival_1.png'),
                                        ),
                                        Text(
                                          '21WN reversible angora cardigan',
                                          textAlign: TextAlign.center,
                                        ),
                                        Text('\$120')
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: const Center(
                                    child: Column(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/Home_page_new_arrival_1.png'),
                                        ),
                                        Text(
                                          '21WN reversible angora cardigan',
                                          textAlign: TextAlign.center,
                                        ),
                                        Text('\$120'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
