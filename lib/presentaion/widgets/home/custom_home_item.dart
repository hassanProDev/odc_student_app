import 'package:flutter/material.dart';
import 'package:odc_workshop_flutter/presentaion/views/constancts/app_color.dart';
import 'package:odc_workshop_flutter/presentaion/widgets/core/default_text.dart';
import 'package:sizer/sizer.dart';

import '../../../model/home/home_model.dart';

class CustomHomeItem extends StatelessWidget {
  HomeModel homeModel;
  double iconSize = 10.w;

  CustomHomeItem({required this.homeModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        homeModel.func!();
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.w)),
        child: Padding(
          padding: EdgeInsets.all(4.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                homeModel.icon,
                color: AppColor.primaryColor,
                size: iconSize,
              ),
              DefaultText(
                text: homeModel.title,
                fontSize: 12.sp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
