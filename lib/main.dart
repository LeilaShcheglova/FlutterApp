import 'package:flutter/material.dart';
import 'package:flutter_app/screens/bottom_bar.dart';
import 'package:flutter_app/utils/app_styles.dart';

// Entry point of the application
void main() {
  // Run the application
  runApp(const MyApp());
}

// Main class of the application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Method to build and return the application widget
  @override
  Widget build(BuildContext context) {
    // Create and return the MaterialApp widget
    return MaterialApp(
      // Disable the debug banner
      debugShowCheckedModeBanner: false,
      // Application title
      title: 'Flutter Demo',
      // Application theme
      theme: ThemeData(
        primaryColor: primary,
      ),
      // Main screen of the application - BottomBar
      home: const BottomBar(),
    );
  }
}
