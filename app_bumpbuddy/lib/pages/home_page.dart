import 'package:app_bumpbuddy/pages/calendario_page.dart';
import 'package:app_bumpbuddy/pages/dicas_page.dart';
import 'package:app_bumpbuddy/pages/semanas_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  int posicaoPagina = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: Icon(
            Icons.person_2_outlined,
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Text(
            "Home Page",
            style: TextStyle(
                color: Theme.of(context).colorScheme.inverseSurface,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              posicaoPagina = value;
            });
          },
          children: const [CalendarioPage(), SemanasPage(), DicasPage()],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Theme.of(context).colorScheme.inverseSurface,
            backgroundColor: Theme.of(context).colorScheme.primary,
            showUnselectedLabels: false,
            onTap: (value) {
              setState(() {
                pageController.jumpToPage(value);
              });
            },
            currentIndex: posicaoPagina,
            items: const [
              BottomNavigationBarItem(
                  label: "Calendário", icon: Icon(Icons.calendar_month)),
              BottomNavigationBarItem(
                  label: "Semanas", icon: Icon(Icons.stroller)),
              BottomNavigationBarItem(label: "Dicas", icon: Icon(Icons.info)),
            ]),
      ),
    );
  }
}
