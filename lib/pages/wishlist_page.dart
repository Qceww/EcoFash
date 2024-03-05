import 'package:figma/classes/wishlist.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/widgets/wishlist_widget.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {

  WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<Wishlist>?> wishlist = getWishlists(1);
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: wishlist,
          builder: (BuildContext context,
              AsyncSnapshot<List<Wishlist>?> snapshot) {
            if (snapshot.hasData) {
              // print(snapshot);
              return WishlistItems();
            } else {
              return WishlistEmpty();
            }
          },
        ),
      ),
    );
  }
}
