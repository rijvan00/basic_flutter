import 'package:flutter/material.dart';
import 'package:prac/responsive/desktopbody.dart';
import 'package:prac/responsive/mobilebody.dart';
import 'package:prac/responsive/responsivelayout.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobilebody: MyMobileBody(),
        desktopbody: MyDesktopBody(),
      ),
    );
  }
}
