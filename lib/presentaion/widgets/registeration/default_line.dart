import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DefaultLine extends StatelessWidget {
  const DefaultLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 30.w,
            height: 1.sp,
            color: Colors.black,
          ),
          Text(' OR '),
          Container(
            width: 30.w,
            height: 1.sp,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
