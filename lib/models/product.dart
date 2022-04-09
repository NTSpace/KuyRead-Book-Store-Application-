import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id, page;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.color,
    required this.page,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Corel Draw",
      price: 234,
      page: 110,
      description: dummyText,
      image: "assets/images/book_1.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Adobe Premiere",
      price: 234,
      page: 100,
      description: dummyText,
      image: "assets/images/book_2.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Adobe Photoshop",
      price: 234,
      page: 250,
      description: dummyText,
      image: "assets/images/book_3.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Google SketchUp",
      price: 234,
      page: 220,
      description: dummyText,
      image: "assets/images/book_4.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Autodesk Maya",
      price: 234,
      page: 58,
      description: dummyText,
      image: "assets/images/book_5.png",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "CSS",
    price: 234,
    page: 120,
    description: dummyText,
    image: "assets/images/book_6.png",
    color: const Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
