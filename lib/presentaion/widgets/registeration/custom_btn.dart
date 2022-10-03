import 'package:flutter/material.dart';
import 'package:odc_workshop_flutter/presentaion/views/constancts/app_color.dart';
import 'package:odc_workshop_flutter/presentaion/widgets/core/default_text.dart';
import 'package:sizer/sizer.dart';

class CustomBtn extends StatelessWidget {
  String text;
  Color? textColor;
  Color? btnColor;

  Function? func;

  CustomBtn({this.textColor, required this.text, this.func, this.btnColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        func!();
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 2.w),
        child: DefaultText(
          text: text,
          textColor: textColor,
          fontSize: 12.sp,
        ),
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(2.w),
          border: Border.all(
            width: 2.sp,
            color: AppColor.primaryColor,
          ),
        ),
      ),
    );
  }
}
