import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_workshop_flutter/presentaion/screens/register/signup_screen.dart';
import 'package:odc_workshop_flutter/presentaion/views/app_layout.dart';
import 'package:odc_workshop_flutter/presentaion/views/constancts/app_color.dart';
import 'package:odc_workshop_flutter/presentaion/widgets/core/app_title.dart';
import 'package:odc_workshop_flutter/presentaion/widgets/core/default_text.dart';
import 'package:odc_workshop_flutter/presentaion/widgets/registeration/custom_btn.dart';
import 'package:odc_workshop_flutter/presentaion/widgets/registeration/custom_textfield.dart';
import 'package:odc_workshop_flutter/presentaion/widgets/registeration/default_line.dart';
import 'package:sizer/sizer.dart';

import '../../../business_logic/cubit/login/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit myCubit = BlocProvider.of(context);
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                toolbarHeight: 20.h,
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
                        text: 'Register',
                        fontSize: 15.sp,
                      ),
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
                      InkWell(
                        onTap: () {},
                        child: DefaultText(
                          text: 'forget password ?'.toUpperCase(),
                          textColor: AppColor.primaryColor,
                        ),
                      ),
                      Spacer(),
                      CustomBtn(
                        text: "login".toUpperCase(),
                        btnColor: AppColor.primaryColor,
                        textColor: Colors.white,
                        func: () {
                          Navigator.pushReplacementNamed(
                              context, AppLayout.routeName);
                        },
                      ),
                      DefaultLine(),
                      CustomBtn(
                        text: "sign up".toUpperCase(),
                        textColor: AppColor.primaryColor,
                        func: () {
                          Navigator.pushReplacementNamed(
                              context, SignUpScreen.routeName);
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
