import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:folio/constants.dart';
import 'package:folio/carousel.dart';

// import 'firebase_options.dart';
// import 'package:firebase_core/firebase_core.dart';
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(); // Initialize Firebase
//   runApp(const MyApp());
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFolio',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          toolbarHeight: 80,
        ),
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: const TextStyle(color: bodyTextColor),
              bodyText2: const TextStyle(color: bodyTextColor),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        titleSpacing: screenwidth / 20,
        title: const Text(
          "MyFolio",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: const Center(
              child: Text(
                "Competences",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: const Center(
              child: Text(
                "Experiences",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: screenwidth / 20),
            child: const Center(
              child: Text(
                "Projets",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ScrollBar(),
    );
  }
}

class ScrollBar extends StatelessWidget {
  ScrollBar({super.key});

// final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final double screeheightsize = MediaQuery.of(context).size.height;
    return Scrollbar(
      isAlwaysShown: true,
      controller: ScrollController(),
      child: const Site(),
    );
  }
}
