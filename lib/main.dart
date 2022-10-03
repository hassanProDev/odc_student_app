import 'package:flutter/material.dart';
import 'package:odc_workshop_flutter/presentaion/screens/register/login_screen.dart';
import 'package:odc_workshop_flutter/presentaion/screens/register/signup_screen.dart';
import 'package:odc_workshop_flutter/presentaion/screens/splash_screen.dart';
import 'package:odc_workshop_flutter/presentaion/views/app_layout.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, oriantation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.transparent,
            centerTitle: true,
          ),
        ),
        initialRoute: SplashScreen.routeName,
        routes: {
          LoginScreen.routeName: (_) => LoginScreen(),
          SignUpScreen.routeName: (_) => SignUpScreen(),
          AppLayout.routeName: (_) => AppLayout(),
          SplashScreen.routeName: (_) => SplashScreen(),
        },
      );
    });
  }
}
