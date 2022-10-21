import 'package:flutter/material.dart';
import 'package:style_ui/theme/colors.dart';
import 'package:style_ui/theme/glass_box.dart';

import '../about/about_1.dart';
import '../about/about_2.dart';
import '../about/about_3.dart';
import '../components/my_appbar.dart';
import '../components/my_bottom.dart';
import '../components/my_tabbar.dart';
import '../tabs/first_tab.dart';
import '../tabs/second_tab.dart';
import '../tabs/third_tab.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _searchButtonTapped(){}

  List tabOptions = const [
    ['IMAM',FirstTab()],
    ['PRESIDENT1',SecondTab()],
    ['PRESIDENT2',ThirdTab()],
  ];

  int _currentIndexBottom = 0;
  void _handBottomIndexChange(int? index){
    _currentIndexBottom = index!;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: tabOptions.length,
        child: Scaffold(
          backgroundColor: back,
          extendBody: true,
          bottomNavigationBar: GlassBox(
            child: BottomBar(
              index: _currentIndexBottom,
              onTap: _handBottomIndexChange,
            ),
          ),
          body: ListView(
            children: [
              MyAppBar(
                title:'UZBEK HEROES',
                onTap: _searchButtonTapped,
              ),
              SizedBox(height: 600,
              child: MyTabBar(
                  tabOptions
              ),
                ),
            ],
          ),
        ));
  }
}
