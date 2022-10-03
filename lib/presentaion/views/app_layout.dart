import 'package:flutter/material.dart';
import 'package:odc_workshop_flutter/presentaion/views/screen_tabs.dart';

import '../widgets/home/home_nav.dart';

class AppLayout extends StatelessWidget {
  static const String routeName = 'appLayout';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tabs[0],
        bottomNavigationBar: HomeNav(
          index: 0,
          func: (index) {},
        ),
      ),
    );
  }
}
