import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/controllers/location_controller.dart';
import 'package:flutter_application_2/screens/home.dart';
import 'package:flutter_application_2/screens/news.dart';
import 'package:flutter_application_2/screens/place.dart';
import 'package:flutter_application_2/screens/profile.dart';
import 'package:get/get.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    HomePage(),
    PlaceScreen(),
    NewsPage(),
    ProfilePage(),
  ];

  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => globalController.checkLoading().isTrue
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : _pages[_currentIndex],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 225, 238, 247),
              blurRadius: 20,
            )
          ],
          margin: const EdgeInsets.only(left: 10, right: 10),
          currentIndex: _currentIndex,
          dotIndicatorColor: Colors.transparent,
          unselectedItemColor: Colors.grey[300],
          selectedItemColor: const Color.fromARGB(255, 166, 214, 248),
          // enableFloatingNavBar: false,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Column(
                children: [
                  Icon(Icons.cloudy_snowing),
                  Text(
                    "Weather",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: const Column(
                children: [
                  Icon(Icons.place),
                  Text(
                    "Place",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),

            /// Search
            DotNavigationBarItem(
              icon: const Column(
                children: [
                  Icon(Icons.newspaper),
                  Text(
                    "News",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Column(
                children: [
                  Icon(Icons.person),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
