import 'package:app_bumpbuddy/pages/home_page.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
                accountEmail: Text("Editar perfil"),
                accountName: Text(
                  "Maria Fulana da Silva",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                currentAccountPicture: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                MyHomePage.pageController.jumpToPage(0);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    "Calendário",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                MyHomePage.pageController.jumpToPage(1);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.stroller,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    "Semanas",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                MyHomePage.pageController.jumpToPage(2);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.info,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    "Dicas",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
            InkWell(
              child: Row(
                children: [
                  Icon(
                    Icons.chat_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    "Feed",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
            InkWell(
              child: Row(
                children: [
                  Icon(
                    Icons.health_and_safety,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    "Monitoramento de sintomas",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
