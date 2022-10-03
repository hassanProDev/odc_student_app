import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../views/constancts/app_color.dart';

class CustomTextField extends StatelessWidget {
  bool hasIcon;
  Function? func;
  String lable;
  TextEditingController? controller;
  IconData? icon;
  bool isVisible;

  CustomTextField(
      {required this.lable,
      this.hasIcon = false,
      this.func,
      this.controller,
      this.isVisible = false,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isVisible,
      decoration: InputDecoration(
        suffixIcon: hasIcon
            ? InkWell(
                onTap: () {
                  func!();
                },
                child: Icon(
                  icon,
                  color: AppColor.primaryColor,
                ),
              )
            : null,
        labelText: lable,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(2.w),
        ),
      ),
    );
  }
}
