import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:odc_workshop_flutter/presentaion/screens/register/login_screen.dart';
import 'package:odc_workshop_flutter/presentaion/views/constancts/app_color.dart';
import 'package:odc_workshop_flutter/presentaion/widgets/core/app_title.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          duration: 2200,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppTitle(),
              LinearPercentIndicator(
                barRadius: Radius.circular(2.w),
                alignment: MainAxisAlignment.center,
                width: 90.w,
                percent: 1,
                animation: true,
                animationDuration: 3000,
                progressColor: AppColor.primaryColor,
              ),
            ],
          ),
          nextScreen: LoginScreen(),
        ),
      ),
    );
  }
}
