import 'package:flutter/material.dart';
import 'package:flutter_website/screens/first_page.dart';
import 'package:flutter_website/screens/nav_bar.dart';
import 'package:flutter_website/screens/second_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => ListTile(
            onTap: () {},
            title: Text('Menu ${++index}'),
          ),
        ),
      ),
      backgroundColor: Palette.background500,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Expanded(
              flex: 1,
              child: NavBar(),
            ),
            Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    FirstPage(),
                    SecondPage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
