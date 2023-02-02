import 'package:flutter/material.dart';
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
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontFamily: GoogleFonts.smythe().fontFamily,
            fontSize: 200,
            height: 0.8,
            wordSpacing: 5,
            letterSpacing: -5,
          ),
        ),
      ),
      home: const MainScreen(),
    );
  }
}

Widget smallScreenWidget =
    const Scaffold(body: Center(child: Text('Small Screen')));
Widget mediumScreenWidget =
    const Scaffold(body: Center(child: Text('Medium Screen')));
Widget largecreenWidget =
    const Scaffold(body: Center(child: Text('Large Screen')));

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    switch (context.screenSize) {
      case ScreenSize.small:
        return smallScreenWidget;
      case ScreenSize.medium:
        return mediumScreenWidget;
      case ScreenSize.large:
        return largecreenWidget;
    }
  }
}
