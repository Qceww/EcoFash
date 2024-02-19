import 'package:figma/pages/blog_list_view.dart';
import 'package:figma/pages/home_page.dart';
import 'package:figma/pages/order_page.dart';
import 'package:figma/pages/reward.dart';
import 'package:figma/pages/shop_grid_view.dart';
import 'package:figma/pages/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  int customerId = -1;
  Navbar({super.key});

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
            leading: const Image(
              image: AssetImage('images/Navbar_discover.png'),
            ),
            title: const Text('Discover'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => const HomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('images/Navbar_shop.png'),
            ),
            title: const Text('Shop'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => const ShopGridView(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('images/Navbar_blog.png'),
            ),
            title: const Text('Blog'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Bloglistview(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('images/Navbar_reward.png'),
            ),
            title: const Text('Reward'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => const Reward(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('images/Navbar_wishlist.png'),
            ),
            title: const Text('Wishlist'),
            onTap: () {

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => WishlistPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('images/Navbar_orders.png'),
            ),
            title: const Text('Order'),
            onTap: () {

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => OrderPage(customerId: customerId,),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
