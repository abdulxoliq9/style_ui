import 'package:flutter/material.dart';
import 'package:style_ui/theme/colors.dart';
class MyTabBar extends StatelessWidget {
  final List tabOption;
   const MyTabBar(this.tabOption);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelColor: textF2,
          labelColor: textF,
          tabs: [
            Text(tabOption[0][0],style: TextStyle(fontSize: 18),),
            Text(tabOption[1][0],style: TextStyle(fontSize: 18),),
            Text(tabOption[2][0],style: TextStyle(fontSize: 18),),
          ],
        ),

        Expanded(child: TabBarView(
          children: [
            tabOption[0][1],
            tabOption[1][1],
            tabOption[2][1],
          ],
        ))
      ],
    );
  }
}
