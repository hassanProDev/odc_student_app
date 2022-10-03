import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_workshop_flutter/business_logic/cubit/signup/signup_cubit.dart';
import 'package:odc_workshop_flutter/presentaion/screens/register/login_screen.dart';
import 'package:odc_workshop_flutter/presentaion/views/app_layout.dart';
import 'package:sizer/sizer.dart';

import '../../views/constancts/app_color.dart';
import '../../widgets/core/app_title.dart';
import '../../widgets/core/default_text.dart';
import '../../widgets/registeration/custom_btn.dart';
import '../../widgets/registeration/custom_textfield.dart';
import '../../widgets/registeration/default_line.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = 'signupScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: BlocConsumer<SignupCubit, SignupState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SignupCubit myCubit = BlocProvider.of(context);
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                toolbarHeight: 15.h,
                title: AppTitle(),
              ),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(
                        text: 'Sign Up',
                        fontSize: 15.sp,
                      ),
                      Spacer(),
                      CustomTextField(lable: 'Name'),
                      Spacer(),
                      CustomTextField(lable: 'Email'),
                      Spacer(),
                      CustomTextField(
                        lable: 'Password',
                        hasIcon: true,
                        isVisible: myCubit.isVisible,
                        icon: myCubit.icon,
                        func: () {
                          myCubit.changeVisible();
                        },
                      ),
                      Spacer(),
                      CustomTextField(
                        lable: 'Password',
                        hasIcon: true,
                        isVisible: myCubit.isVisible,
                        icon: myCubit.icon,
                        func: () {
                          myCubit.changeVisible();
                        },
                      ),
                      Spacer(),
                      CustomTextField(
                        lable: 'Phone Number',
                      ),
                      Spacer(),
                      CustomBtn(
                        text: "sign up".toUpperCase(),
                        btnColor: AppColor.primaryColor,
                        textColor: Colors.white,
                        func: () {
                          Navigator.pushReplacementNamed(
                              context, AppLayout.routeName);
                        },
                      ),
                      DefaultLine(),
                      CustomBtn(
                        text: "login".toUpperCase(),
                        textColor: AppColor.primaryColor,
                        func: () {
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.routeName);
                        },
                      ),
                      Spacer(
                        flex: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
