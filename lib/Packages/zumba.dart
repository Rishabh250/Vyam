import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vyam/List/list.dart';

import 'bookingDetails.dart';

class ZumbaList extends StatelessWidget {
  ZumbaList({
    Key? key,
    required double width,
  })  : _width = width,
        super(key: key);

  final double _width;
  BookingDetails bookingDetails = BookingDetails();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text("Zumba",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: HexColor("3A3A3A"),
                  fontWeight: FontWeight.w600)),
          children: [
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: zumba.length,
                itemBuilder: (context, snapshot) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: _width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            const Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              children: [
                                Text(
                                  zumba[snapshot].title,
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: HexColor("3A3A3A"),
                                      fontWeight: FontWeight.w600),
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(5.0),
                                          padding: const EdgeInsets.only(
                                              top: 2.0,
                                              bottom: 2.0,
                                              left: 5,
                                              right: 5),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  color: HexColor("49C000"))),
                                          child: Text(
                                            '20% off',
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 6,
                                                color: HexColor("49C000")),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$${zumba[snapshot].orginalPrice}",
                                              style: GoogleFonts.poppins(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  fontSize: 12,
                                                  color: HexColor("BFB9B9"),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Text(
                                              "\$${zumba[snapshot].price}",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: HexColor("3A3A3A"),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Inc. of all taxes",
                                      style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          color: HexColor("B2B2B2"),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                MaterialButton(
                                  elevation: 0,
                                  onPressed: () {},
                                  color: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.5,
                                          color: HexColor("FFCA00")),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: Text("Details",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: HexColor("FFCA00"),
                                              fontWeight: FontWeight.w600))),
                                ),
                                const Spacer(),
                                MaterialButton(
                                  elevation: 0,
                                  onPressed: () {
                                    bookingDetails.bookingDetails(
                                        context, snapshot, zumba, "Zumba ");
                                  },
                                  color: HexColor("292F3D"),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                      child: Text("Buy now",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: HexColor("FFFFFF"),
                                              fontWeight: FontWeight.w600))),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
