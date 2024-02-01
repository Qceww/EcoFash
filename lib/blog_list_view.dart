import 'package:flutter/material.dart';

class Bloglistview extends StatefulWidget {
  const Bloglistview({Key? key}) : super(key: key);

  @override
  State<Bloglistview> createState() => _BloglistviewState();
}

class _BloglistviewState extends State<Bloglistview> {
  final List<Map<String, String>> blogTitles = [
    {
      'title': 'Blog Title 1',
      'tag': 'News',
    },
    {
      'title': 'Blog Title 2',
      'tag': 'Fact',
    },
    {
      'title': 'Blog Title 3',
      'tag': 'Opinion',
    },
    {
      'title': 'Blog Title 4',
      'tag': 'Review',
    },
    {
      'title': 'Blog Title 5',
      'tag': 'Tips',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: blogTitles.map((blog) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'RD',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '#Fashion #Tips',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'EST THE BIEN 2021 STYLE GUIDE : THE BIGGEST FALL TRENDS',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '¯ 4 days ago',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
