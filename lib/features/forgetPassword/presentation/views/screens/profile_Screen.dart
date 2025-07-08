import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Profile", style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700
          ),),
        ),
    );
  }
}
