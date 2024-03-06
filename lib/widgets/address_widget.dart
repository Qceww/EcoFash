import 'package:figma/classes/address.dart';
import 'package:figma/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressDetail extends StatelessWidget {
  Address address;

  AddressDetail({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Address widget: ${address.addressId}");
        putAddressNow(address);
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.875,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 235, 232, 232),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: Color.fromARGB(
                  255, 235, 232, 232), // Apply baddress color based on status
              width: 2.0,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: Text(
                  address.addressName!,
                  style: GoogleFonts.zenAntique(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 20.0),
                child: Text(
                  "Address Detail : ${address.addressDetail}",
                  style: GoogleFonts.zenAntique(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
