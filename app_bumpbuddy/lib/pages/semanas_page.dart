import 'package:app_bumpbuddy/pages/detalhes_semanas_page.dart';
import 'package:flutter/material.dart';

class SemanasPage extends StatefulWidget {
  const SemanasPage({super.key});

  @override
  State<SemanasPage> createState() => _SemanasPageState();
}

class _SemanasPageState extends State<SemanasPage> {
  ScrollController _scrollController = ScrollController();

  List<String> semanas = [
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
    "lib/assets/images/bump_buddy.png",
  ];

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        setState(() {}); // Rebuild the widget on scroll to update image scales
        return true;
      },
      child: ListView.builder(
        controller: _scrollController,
        itemCount: semanas.length,
        itemBuilder: (BuildContext context, int index) {
          var semana = semanas[index];
          double scale = 1.0;
          double position = index * 100.0 - _scrollController.offset;
          if (position < 0) {
            scale = 1.0 +
                position / 500; // Adjust the divisor for desired scaling effect
          } else {
            scale = 1.0 - position / 500;
          }
          scale = scale.clamp(0.5, 1.0); // Limit the minimum and maximum scale
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetalesSemanasPage(
                            semana: index,
                          )));
            },
            child: ParallaxImage(
              scale: scale,
              semana: semana,
            ),
          );
        },
      ),
    );
  }
}

class ParallaxImage extends StatelessWidget {
  final double scale;

  final String semana;

  ParallaxImage({required this.scale, required this.semana});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.scale(
        scale: scale,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(300),
          child: Image.asset(
            semana,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
