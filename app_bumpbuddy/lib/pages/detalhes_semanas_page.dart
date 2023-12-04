import 'package:flutter/material.dart';

class DetalesSemanasPage extends StatefulWidget {
  const DetalesSemanasPage({super.key, required this.semana});

  final int semana;

  @override
  State<DetalesSemanasPage> createState() => _DetalesSemanasPageState();
}

class _DetalesSemanasPageState extends State<DetalesSemanasPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text("Semana ${widget.semana}"),
      ),
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: Image.asset(
                "lib/assets/images/bump_buddy.png",
                height: 100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 450,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                surfaceTintColor: Colors.white,
                elevation: 5,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text("Aqui irá o texto"),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
