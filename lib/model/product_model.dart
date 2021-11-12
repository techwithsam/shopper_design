import 'package:flutter/material.dart';

class ProductModel {
  final String name, description, image;
  final List<String> imgs;
  final double price;
  final Color bgColor, iconClr;

  ProductModel({
    required this.bgColor,
    required this.iconClr,
    required this.image,
    required this.imgs,
    required this.name,
    required this.description,
    required this.price,
  });
}

List<ProductModel> productItems = [
  ProductModel(
    name: 'AirPods Max',
    description:
        'High-Fidelity Audio The Apple-designed driver delivers high-fidelity playback.',
    image: 'assets/head2.png',
    price: 549,
    bgColor: const Color(0xfffef8e0),
    iconClr: const Color(0xFFFACB10),
    imgs: [],
  ),
  ProductModel(
    name: 'X-Seven Max',
    description:
        'X-Seven Wireless Headphone High-Fidelity Audio The Apple-designed driver delivers high-fidelity playback.',
    image: 'assets/purple.png',
    price: 100,
    bgColor: const Color(0xffd4dbf8),
    iconClr: const Color(0xFF0E3CF7),
    imgs: [],
  ),
  ProductModel(
    name: 'Q-Seven Wireless',
    description:
        'Q-Seven is a high standard wireless headphone, very realiable and confortable try it out today and your live will never remain the same',
    image: 'assets/head1.png',
    price: 149,
    bgColor: const Color(0xFFFEE0E8),
    iconClr: const Color(0xFFF81C57),
    imgs: [],
  ),
];
