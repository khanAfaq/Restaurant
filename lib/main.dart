import 'package:flutter/material.dart';

import 'pages/input_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: const InputPage(),
      routes: {
        '/inputpage': (context) => const InputPage(),
        '/menupage': (context) => const MenuPage(),
      },
    );
  }
}
