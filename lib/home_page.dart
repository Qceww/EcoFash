
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
                  // height: MediaQuery.of(context).size.height - 100,
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Center(
                                  child: Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'images/Home_page_new_arrival_1.png'),
                                      ),
                                      Text(
                                        '21WN reversible angora cardigan',
                                        style: GoogleFonts.tenorSans(),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text('\$120',
                                          style: GoogleFonts.tenorSans())
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Center(
                                  child: Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'images/Home_page_new_arrival_1.png'),
                                      ),
                                      Text(
                                        '21WN reversible angora cardigan',
                                        style: GoogleFonts.tenorSans(),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text('\$120',
                                          style: GoogleFonts.tenorSans()),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Center(
                                  child: Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'images/Home_page_new_arrival_1.png'),
                                      ),
                                      Text(
                                        '21WN reversible angora cardigan',
                                        style: GoogleFonts.tenorSans(),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text('\$120',
                                          style: GoogleFonts.tenorSans())
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Center(
                                  child: Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'images/Home_page_new_arrival_1.png'),
                                      ),
                                      Text(
                                        '21WN reversible angora cardigan',
                                        style: GoogleFonts.tenorSans(),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text('\$120',
                                          style: GoogleFonts.tenorSans()),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Learn More',
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image(
                                  image:
                                      AssetImage('images/Home_page_arrow.png'),
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.fill)
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Image(
                          image: AssetImage('images/Home_page_garis.png'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('images/Prada.png')),
                                SizedBox(
                                  width: 40,
                                ),
                                Image(image: AssetImage('images/Burberry.png')),
                                SizedBox(
                                  width: 40,
                                ),
                                Image(image: AssetImage('images/Boss.png')),
                              ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('images/Catier.png')),
                                SizedBox(
                                  width: 30,
                                ),
                                Image(image: AssetImage('images/Gucci.png')),
                                SizedBox(
                                  width: 20,
                                ),
                                Image(
                                    image: AssetImage('images/Tiffany&Co.png')),
                              ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Image(
                          image: AssetImage('images/Home_page_garis.png'),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: Text(
                            'COLLECTIONS',
                            style: GoogleFonts.tenorSans(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: const Image(
                            image: AssetImage(
                                'images/Home_page_october_collection.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: const Image(
                            image: AssetImage(
                                'images/Home_page_autumn_collection.png'),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Text(
                            'JUST FOR YOU',
                            style: GoogleFonts.tenorSans(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Image(
                          image: AssetImage('images/Home_page_garis.png'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 2,
                          height: 400,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'images/Home_page_page_view_1.png'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Harris Tweed Three Button Jacket',
                                        style: GoogleFonts.tenorSans(),
                                      ),
                                      Text(
                                        '\$120',
                                        style: GoogleFonts.tenorSans(
                                          textStyle: const TextStyle(
                                              color: Colors.red),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'images/Home_page_page_view_2.png'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Harris Tweed Three Button Jacket',
                                        style: GoogleFonts.tenorSans(),
                                      ),
                                      Text(
                                        '\$120',
                                        style: GoogleFonts.tenorSans(
                                          textStyle: const TextStyle(
                                              color: Colors.red),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'images/Home_page_page_view_3.png'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Harris Tweed Three Button Jacket',
                                        style: GoogleFonts.tenorSans(),
                                      ),
                                      Text(
                                        '\$120',
                                        style: GoogleFonts.tenorSans(
                                          textStyle: const TextStyle(
                                              color: Colors.red),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            'images/Home_page_page_view_1.png'),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '1WN reversible angora cardigan',
                                        style: GoogleFonts.tenorSans(),
                                      ),
                                      Text(
                                        '\$120',
                                        style: GoogleFonts.tenorSans(
                                          textStyle: const TextStyle(
                                              color: Colors.red),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.pink.shade200,
                          width: MediaQuery.of(context).size.width,
                          height: 450,
                          child: Center(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'EcoFash',
                                  style: GoogleFonts.zenAntique(
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 0, 50, 40),
                                  child: Text(
                                    'Making a luxurious lifestyle accessible for a generous group of women is our daily drive.',
                                    style: GoogleFonts.tenorSans(
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 0, 40, 40),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                40,
                                        child: Column(
                                          children: [
                                            const Image(
                                              image: AssetImage(
                                                  'images/Home_page_effect_1.png'),
                                            ),
                                            Text(
                                              "Fast shipping. Free on orders over \$25.",
                                              style: GoogleFonts.tenorSans(
                                                fontSize: 13,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                40,
                                        child: Column(
                                          children: [
                                            const Image(
                                              image: AssetImage(
                                                  'images/Home_page_effect_2.png'),
                                            ),
                                            Text(
                                              "Sustainable process from start to finish.",
                                              style: GoogleFonts.tenorSans(
                                                fontSize: 13,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 0, 40, 40),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                40,
                                        child: Column(
                                          children: [
                                            const Image(
                                              image: AssetImage(
                                                  'images/Home_page_effect_3.png'),
                                            ),
                                            Text(
                                              "Unique designs and high-quality materials.",
                                              style: GoogleFonts.tenorSans(
                                                fontSize: 13,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                    2 -
                                                40,
                                        child: Column(
                                          children: [
                                            const Image(
                                              image: AssetImage(
                                                  'images/Home_page_effect_4.png'),
                                            ),
                                            Text(
                                              "Fast shipping. Free on orders over \$25.",
                                              style: GoogleFonts.tenorSans(
                                                fontSize: 13,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Image(
                                  image: AssetImage(
                                      'images/Home_page_effect_5.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('images/Twitter.png'),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Image(
                      image: AssetImage('images/Instagram.png'),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Image(
                      image: AssetImage('images/YouTube.png'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  image: AssetImage('images/Home_page_garis.png'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'support@ecofash',
                      style: GoogleFonts.tenorSans(),
                    ),
                    Text(
                      '+12 123 456 7896',
                      style: GoogleFonts.tenorSans(),
                    ),
                    Text(
                      '08.00 - 22.00 - Everday',
                      style: GoogleFonts.tenorSans(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Image(
                  image: AssetImage('images/Home_page_garis.png'),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'About',
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Contact',
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      'Blog',
                      style: GoogleFonts.tenorSans(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}