import 'package:flutter/material.dart';
import 'package:style_ui/about/about_1.dart';
import 'package:style_ui/components/card_images.dart';
class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: const [
             CardImages(imagePath: 'assets/images/imam0.jpg',),
            About_1()
          ],
        ),
      ],
    );
  }
}
