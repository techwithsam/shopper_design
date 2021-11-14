import 'package:flutter/material.dart';
import 'package:shopper_design/model/product_model.dart';
import 'package:shopper_design/utils/styles.dart';
import 'cart_page.dart';

class ProductDetails extends StatefulWidget {
  final int index;
  const ProductDetails({Key? key, required this.index}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _quantity = 1;
  late double price;

  @override
  void initState() {
    super.initState();
    price = productItems[widget.index].price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const CardPage(),
              ),
            );
          },
          elevation: 0,
          minWidth: double.infinity,
          height: 65,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.black,
          child: Text(
            'Buy Now - \$$price',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Center(
                child: Container(
                  height: 380,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(productItems[widget.index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Headphones', style: style2),
                      Text(
                        productItems[widget.index].name,
                        style: h1Style,
                      ),
                    ],
                  ),
                  Row(
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: 25,
                        width: 25,
                        padding: const EdgeInsets.all(4),
                        margin: const EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: index == widget.index
                                ? productItems[index].bgColor
                                : Colors.white,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: productItems[index].iconClr,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_quantity == 1) {
                              _quantity = 1;
                            } else {
                              _quantity -= 1;
                                price -= productItems[widget.index].price;
                            }
                          });
                        },
                        child: drawCont('—'),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        '$_quantity',
                        style: const TextStyle(fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(width: 15),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _quantity += 1;
                            price += productItems[widget.index].price;
                          });
                        },
                        child: drawCont('+'),
                      ),
                    ],
                  ),
                  Text(
                    '\$${productItems[widget.index].price}',
                    style: priceStyle,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                productItems[widget.index].description,
                style: style2,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget drawCont(String txt) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.black, width: 1.6),
      ),
      child: Center(
        child: Text(
          txt,
          style: const TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
