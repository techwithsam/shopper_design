import 'package:flutter/material.dart';
import 'pages/dashboard.dart';
import 'pages/favorite.dart';
import 'pages/more.dart';
import 'pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const DashboardPage(),
    const FavouritePage(),
    const ProfilePage(),
    const MorePage(),
  ];

  final List<IconData> _icons = [
    Icons.home_filled,
    Icons.favorite_sharp,
    Icons.person_rounded,
    Icons.grain,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.local_mall_rounded),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max, 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) => GestureDetector(
                  onTap: () { 
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26, vertical: 10),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color:
                          _currentIndex == index ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      _icons[index],
                      size: 26,
                      color:
                          _currentIndex == index ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: _children[_currentIndex],
    );
  }
}
