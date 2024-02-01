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
    },
    {
      'title': 'Blog Title 2',
    },
    {
      'title': 'Blog Title 3',
    },
    {
      'title': 'Blog Title 4',
    },
    {
      'title': 'Blog Title 5',
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: blogTitles.map((blog) {
                return Container(
                  margin: const EdgeInsets.only(
                      bottom:
                          16), // Adjust margin for spacing between containers
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: 350,
                        decoration: const BoxDecoration(color: Colors.blue),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(top: 5, bottom: 16, left: 0),
                        child: Text(
                          blog['title']!,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
