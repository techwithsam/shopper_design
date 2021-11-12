import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopper_design/utils/styles.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(14, 0, 14, 4),
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfffef8e0),
              ),
              child: Image.asset('assets/head2.png'),
            ),
            title: Text(
              'AirPods Max',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            subtitle: Text(
              '\$199.99',
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            trailing: const Icon(
              Icons.delete,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
