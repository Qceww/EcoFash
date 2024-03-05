import 'package:figma/classes/cartProduct.dart';
import 'package:figma/classes/product.dart';
import 'package:figma/pages/shop_detailed_view.dart';
import 'package:figma/pages/shop_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

// ignore: must_be_immutable
class GridViews extends StatefulWidget {
  int? productId;
  String? name;
  int? price;
  String? url;

  GridViews(
      {super.key,
      required this.productId,
      required this.name,
      required this.price,
      required this.url});

  @override
  State<GridViews> createState() => _GridViewsState();
}

class _GridViewsState extends State<GridViews> {
  IconData wishlist = Icons.favorite_border;

  // const GridViews({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // print(widget.productId);
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => ShopDetailedView(
              productId: widget.productId!,
            ),
          ),
        );
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 25,
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.url!), fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (wishlist == Icons.favorite) {
                              wishlist = Icons.favorite_border;
                            } else {
                              wishlist = Icons.favorite;
                            }
                          });
                        },
                        child: Icon(
                          wishlist,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '21WN',
                      style: GoogleFonts.tenorSans(),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      widget.name!,
                      style: GoogleFonts.tenorSans(),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$${widget.price}',
                      style: GoogleFonts.tenorSans(
                          textStyle: const TextStyle(color: Colors.red)),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductColor extends StatelessWidget {
  String productColor = '';
  int hexToInteger(String hex) => int.parse(hex.substring(1), radix: 16) + 0xFF000000;
  ProductColor({super.key, required this.productColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        color: Color(hexToInteger(productColor)),
        shape: BoxShape.circle,
      ),
    );
  }
}

class ProductColorBorder extends StatelessWidget {
  String productColor = '';
  int hexToInteger(String hex) => int.parse(hex.substring(1), radix: 16) + 0xFF000000;
  ProductColorBorder({super.key, required this.productColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        color: Color(hexToInteger(productColor)),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black),
      ),
    );
  }
}

class ProductSize extends StatelessWidget {
  String Size = '';
  int hexToInteger(String hex) => int.parse(hex, radix: 16);
  ProductSize({super.key, required this.Size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          Size,
          textAlign: TextAlign.center,
          style: GoogleFonts.tenorSans(
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}

class ProductSizeSelected extends StatelessWidget {
  String Size = '';
  int hexToInteger(String hex) => int.parse(hex, radix: 16);
  ProductSizeSelected({super.key, required this.Size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          Size,
          textAlign: TextAlign.center,
          style: GoogleFonts.tenorSans(
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}

class ProductDetailedView extends StatelessWidget {
  Product product;

  ProductDetailedView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    List<String?> images = [
      product.picture1,
      product.picture2,
      product.picture3,
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.65,
            child: PageView.builder(
                itemCount: 3,
                pageSnapping: true,
                itemBuilder: (context, pagePosition) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage(images[pagePosition]!),
                      fit: BoxFit.cover,
                    ),
                  );
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
          child: Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName!,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  product.productDescription!,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  '\$${product.productPrice}',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.tenorSans(
                    textStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProductInformation extends StatelessWidget {
  String title = '';
  String content = '';
  ProductInformation({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: GoogleFonts.tenorSans(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                content,
                textAlign: TextAlign.left,
                style: GoogleFonts.tenorSans(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ));
  }
}
