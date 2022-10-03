import 'package:flutter/material.dart';
import 'package:odc_workshop_flutter/data/local/home_data.dart';
import 'package:odc_workshop_flutter/presentaion/widgets/core/app_title.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/home/custom_home_item.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homeScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: AppTitle(),
          toolbarHeight: 15.h,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: homeItem.length,
                    itemBuilder: (_, index) =>
                        CustomHomeItem(homeModel: homeItem[index])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
