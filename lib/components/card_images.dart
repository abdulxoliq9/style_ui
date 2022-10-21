import 'package:flutter/material.dart';
class CardImages extends StatelessWidget {
  final String imagePath;
  const CardImages({Key? key,required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
            child: Image.asset(imagePath,
            fit: BoxFit.fill,)));
  }
}
