import 'package:flutter/material.dart';
import 'package:rideshare/view/onboarding/onboarding_one.dart';

import 'view/authentication/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: "Poppins",
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
