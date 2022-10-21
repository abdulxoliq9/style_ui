
import 'package:flutter/material.dart';
import 'package:style_ui/about/about_3.dart';
import 'package:style_ui/components/card_images.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const CardImages(imagePath: 'assets/images/president_2.webp',),
          About_3(),
          ],
        ),
      ],
    );
  }
}
