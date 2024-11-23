import 'package:aslab_travel/models/destination_page.dart';
import 'package:aslab_travel/utils/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;

  List<TravelDestination> popular = listDestination
      .where((element) => element.category == "popular")
      .toList();

  List<TravelDestination> rekomendasi = listDestination
      .where((element) => element.category == "rekomendasi")
      .toList();

  List<IconData> icons = [
    Icons.home_filled,
    Icons.bookmark_border_outlined,
    Icons.shopping_cart_outlined,
    Icons.person_outline_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          buildSearchButton(
            
          )
          ],
      ),
    );
  }
}

Widget BuildAppBar() {
  return Container(
    height: 120,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 5),
          )
        ]),
    child: SafeArea(
        child: Center(
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      ),
    )),
  );
}

Widget buildSearchButton() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: kButtonColor,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.8),
          spreadRadius: 2,
          blurRadius: 10,
          offset: const Offset(0, 5),
        ),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'cari destinasi...',
        hintStyle: TextStyle(
          color: Colors.white54,
          fontSize: 18,
        ),
        prefixIcon: Icon(Icons.search, color: Colors.white54, size: 28),
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 12),
      ),
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    ),
  );
}
