import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:style_ui/theme/colors.dart';
class MyAppBar extends StatelessWidget {

  final String title;
  VoidCallback onTap;
   MyAppBar({Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(
            title,
            style: GoogleFonts.bebasNeue(
              fontSize: 63,color: textF
            )
          ),),
          SizedBox(width: 30,),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
                color: font
              ),
              child: const Icon(Icons.search, size: 36,
              color: textF,),
            ),
          )
        ],
      ),

    );
  }
}
