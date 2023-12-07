import 'package:app_bumpbuddy/custom_widgets/custom_drawer.dart';
import 'package:app_bumpbuddy/pages/calendario_page.dart';
import 'package:app_bumpbuddy/pages/dicas_page.dart';
import 'package:app_bumpbuddy/pages/semanas_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  static PageController pageController = PageController();
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int posicaoPagina = 0;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(Icons.person_2_outlined)),
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Text(
            "Home Page",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: PageView(
          controller: MyHomePage.pageController,
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
                MyHomePage.pageController.jumpToPage(value);
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
        drawer: CustomDrawer(),
      ),
    );
  }
}
