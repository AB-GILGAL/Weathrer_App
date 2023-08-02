import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 9, 39, 10),
      ),
      body: const CircleAvatar(
        radius: 50,
        child: Image(
            image: NetworkImage(
                "https://tvline.com/wp-content/uploads/2022/01/judge-steve-harvey-abc-1.jpg?w=640")),
      ),
    );
  }
}
