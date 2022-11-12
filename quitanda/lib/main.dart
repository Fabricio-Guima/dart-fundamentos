import 'package:flutter/material.dart';
import 'package:quitanda/src/auth/sign_in_screen.dart';

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
      title: 'Flutter Demo kk',
      theme: ThemeData(
        //isso colocou o outline dos inputs em verde
        primarySwatch: Colors.green,
        //seta que todos os scaffolds sejam dessa cor
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
      ),
      home: const SignInScreen(),
    );
  }
}
