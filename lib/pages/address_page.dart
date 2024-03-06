import 'package:figma/classes/address.dart';
import 'package:figma/widgets/address_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressPage extends StatelessWidget {
  late List<Address>? addresses = [];
  AddressPage({Key? key, required this.addresses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: IconButton(
                      onPressed: () {
                        // Handle closing the cart
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Center(
                      child: Text(
                        "SAVED ADDRESS",
                        style: GoogleFonts.zenAntique(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: addresses!.length,
                  itemBuilder: (context, index) {
                    final address = addresses![index];
                    return AddressDetail(address: address);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
