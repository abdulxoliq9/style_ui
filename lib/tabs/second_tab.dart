
import 'package:flutter/material.dart';
import 'package:style_ui/about/about_2.dart';
import 'package:style_ui/components/card_images.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const CardImages(imagePath: 'assets/images/president_1.webp'),
            About_2(),
          ],
        ),
      ],
    );
  }
}
