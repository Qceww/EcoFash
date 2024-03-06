import 'package:figma/classes/product.dart';
import 'package:figma/classes/wishlist.dart';
import 'package:figma/functions/functions.dart';
import 'package:figma/pages/shop_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistEmpty extends StatelessWidget {
  const WishlistEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  child: const Icon(
                    Icons.close,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            Text(
              'WISHLIST',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(fontSize: 24),
              ),
            ),
            const Image(
              image: AssetImage('images/Home_page_garis.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '0 ITEM(S)',
              style: GoogleFonts.tenorSans(
                textStyle: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  "THERE'S NO WISHLIST",
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const ShopGridView(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'SELECT PRODUCT',
                    style: GoogleFonts.tenorSans(
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class WishlistItems extends StatelessWidget {
  WishlistItems({super.key});

  @override
  late Future<List<Product>?> products = getProduct();
  late Future<List<Wishlist>?> wishlist = getWishlists(1);
  late List<Product>? productItems;
  late List<Wishlist>? wishlistItems;
  late Map<int, Product> productMap = {};
  late List<Product> wishlistProducts = [];
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: products,
        builder:
            (BuildContext context, AsyncSnapshot<List<Product>?> snapshot) {
          if (snapshot.hasData) {
            productItems = snapshot.data;
            return FutureBuilder(
                future: wishlist,
                builder: (BuildContext context,
                    AsyncSnapshot<List<Wishlist>?> snapshot) {
                  wishlistItems = snapshot.data;

                  if (productItems == null) {
                    productMap = {};
                  }
                  if (wishlistItems == null) {
                    wishlistItems = [];
                  }

                  for (Product product in productItems!) {
                    productMap[product.productId!] = product;
                  }

                  for (Wishlist item in wishlistItems!) {
                    // Check if rewardId exists in the rewardMap
                    if (productMap.containsKey(item.productId)) {
                      wishlistProducts.add(productMap[item.productId]!);
                    }
                  }

                  print(wishlistProducts);

                  if (snapshot.hasData) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  child: const Icon(
                                    Icons.close,
                                    size: 30,
                                  ),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                            Text(
                              'WISHLIST',
                              style: GoogleFonts.tenorSans(
                                textStyle: const TextStyle(fontSize: 24),
                              ),
                            ),
                            const Image(
                              image: AssetImage('images/Home_page_garis.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: wishlistProducts.length,
                                itemBuilder: (context, index) {
                                  final wishlistProduct =
                                      wishlistProducts[index];
                                  return WishlistProduct(
                                      product: wishlistProduct);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                });
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}

class WishlistProduct extends StatelessWidget {
  Product product;
  WishlistProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        height: 150,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage('images/Cart_page_1.png'),
              fit: BoxFit.fill,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  product.productName!,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    product.productDescription!,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
