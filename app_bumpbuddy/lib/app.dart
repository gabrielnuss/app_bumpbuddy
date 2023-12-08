import 'package:app_bumpbuddy/pages/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 255, 209, 198),
            background: Color.fromARGB(255, 255, 209, 198),
            primary: Color.fromARGB(255, 255, 159, 134),
            inverseSurface: Colors.white,
            inversePrimary: Color.fromRGBO(255, 216, 206, 1)),
        useMaterial3: true,
      ),
      home: LoginForm(),
    );
  }
}
