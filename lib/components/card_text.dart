import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardText extends StatelessWidget {
  final String name;
  final String about;
  const CardText({Key? key,
  required this.name,
  required this.about}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Text(name,
            style: GoogleFonts.bebasNeue(
                fontSize: 33
            ),),
          SizedBox(height: 20,),
        Text(about,style: GoogleFonts.acme(
          fontSize: 22
        ))
        ],
      ),);
  }}
