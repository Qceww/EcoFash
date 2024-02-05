import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Welcome',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            accountEmail: Text(
              'Michael Scuderia',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
            currentAccountPicture: const CircleAvatar(
              child: Image(
                image: AssetImage('images/Navbar_image.png'),
                fit: BoxFit.cover,
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Image(image: AssetImage('images/Navbar_discover.png'),),
            title: const Text('Discover'),
            onTap: () {},
          ),
          ListTile(
            leading: Image(image: AssetImage('images/Navbar_shop.png'),),
            title: const Text('Shop'),
            onTap: () {},
          ),
          ListTile(
            leading: Image(image: AssetImage('images/Navbar_blog.png'),),
            title: const Text('Blog'),
            onTap: () {},
          ),
          ListTile(
            leading: Image(image: AssetImage('images/Navbar_reward.png'),),
            title: const Text('Reward'),
            onTap: () {},
          ),
          ListTile(
            leading: Image(image: AssetImage('images/Navbar_wishlist.png'),),
            title: const Text('Wishlist'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
