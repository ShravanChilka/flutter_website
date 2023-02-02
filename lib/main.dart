import 'package:flutter/material.dart';
import 'package:flutter_website/utils/extensions.dart';
import 'package:flutter_website/utils/styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'helper/responsive.dart';
import 'screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Palette.primary500.toMaterialColor(),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.black)),
        ),
        filledButtonTheme: const FilledButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Palette.primary500),
            foregroundColor: MaterialStatePropertyAll(Colors.black),
            minimumSize: MaterialStatePropertyAll(Size(150, 50)),
          ),
        ),
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            minimumSize: MaterialStatePropertyAll(Size(48, 48)),
          ),
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontFamily: GoogleFonts.michroma().fontFamily,
            fontWeight: FontWeight.w900,
            fontSize: 50,
          ),
        ),
      ),
      home: const ResponsiveScreen(),
    );
  }
}

Widget smallScreenWidget =
    const Scaffold(body: Center(child: Text('Small Screen')));
Widget mediumScreenWidget =
    const Scaffold(body: Center(child: Text('Medium Screen')));
Widget largecreenWidget =
    const Scaffold(body: Center(child: Text('Large Screen')));

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    switch (context.screenSize) {
      case ScreenSize.small:
        return smallScreenWidget;
      case ScreenSize.medium:
        return const MainScreen();
      case ScreenSize.large:
        return const MainScreen();
    }
  }
}
