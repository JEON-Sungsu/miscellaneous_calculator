import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miscellaneous_calculator/presentation/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '잡학계산기',
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansTextTheme(
          Theme.of(context).textTheme
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

