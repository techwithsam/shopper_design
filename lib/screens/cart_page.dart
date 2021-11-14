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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
        child: MaterialButton(
          onPressed: () {},
          elevation: 0,
          minWidth: double.infinity,
          height: 65,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.black,
          child: const Text(
            'Checkout',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text('Cart', style: h1Style),
            const SizedBox(height: 20),
            createCart(
              name: 'AirPods Max',
              price: 549.0,
              img: 'assets/head2.png',
              bg: const Color(0xfffef8e0),
            ),
            const SizedBox(height: 20),
            createCart(
              name: 'Q-Seven Wireless',
              price: 149.0,
              img: 'assets/head1.png',
              bg: const Color(0xFFFEE0E8),
            ),
            const SizedBox(height: 30),
            Text(
              'Payments Methods',
              style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              tileColor: const Color(0xFFDBE1F8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              leading: const Icon(Icons.credit_card),
              title: Text(
                'Travel Card',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              subtitle: Text(
                'MasterCard - 3356',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 18,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Text.rich(
                TextSpan(
                  text: 'Total Order\n',
                  style: GoogleFonts.rubik(
                    color: Colors.grey,
                    fontSize: 20, 
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: '\$549.00',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createCart({String? name, price, img, Color? bg}) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: 75,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: bg!,
            ),
            child: Image.asset('$img'),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$name',
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '\$$price',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 1,
          child: Icon(
            Icons.delete,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
