import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const LoginPage(),
        );
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.h),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 14.h,
              ),
              Text(
                "Hello .",
                style:
                    TextStyle(fontSize: 40.sp, color: const Color(0xFF34495e)),
              ),
              SizedBox(
                height: 13.h,
              ),
              Text(
                "Welcome back! kindly enter ",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xFFbdc3c7),
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "your login detail.",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xFFbdc3c7),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "Email",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xFFbdc3c7),
                    fontWeight: FontWeight.w400),
              ),
              TextFormField(),
              SizedBox(
                height: 27.h,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xFFbdc3c7),
                    fontWeight: FontWeight.w400),
              ),
              TextFormField(
                obscureText: true,
              ),
              SizedBox(
                height: 60.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Forgot Password",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFFbdc3c7),
                  ),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF34495e)),
                      textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w700)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.h))),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w700)),
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Color(0xFF34495e))),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.h))),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Color(0xFF34495e), fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
