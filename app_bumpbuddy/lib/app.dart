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
            seedColor: Colors.pink,
            background: Color.fromARGB(255, 255, 235, 252),
            primary: Color.fromARGB(255, 249, 201, 242),
            inverseSurface: Color.fromARGB(255, 242, 153, 230)),
        useMaterial3: true,
      ),
      home: LoginForm(),
    );
  }
}
