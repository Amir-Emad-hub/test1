import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/register.dart';
import 'package:test1/widgets/botton.dart';
import 'package:test1/widgets/text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme:  IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w), // responsive padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
        
              Text(
                "HELLO,",
                style: GoogleFonts.poppins(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
        
              Text(
                "Welcome Back!",
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
        
              SizedBox(height: 50.h),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("  Email", style: TextStyle(fontSize: 14.sp)),
                    SizedBox(height: 5.h),
                    CustomTextField(controller: email, hint: "Email"),
        
                    SizedBox(height: 50.h),
        
                    Text("  Enter password", style: TextStyle(fontSize: 14.sp)),
                    CustomTextField(controller: password, hint: "Enter password"),
        
                    SizedBox(height: 8.h),
        
                    Text(
                      "  Forgot Password?",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color:  Color(0xffFF9C00),
                      ),
                    ),
                  ],
                ),
              ),
        
              SizedBox(height: 50.h),
        
              Center(
                child: Column(
                  children: [
                    CustomButton(text: "Sign In", page:  Login()),
        
                    SizedBox(height: 15.h),
        
                    Text(
                      "___Or Sign in With___",
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffD9D9D9),
                      ),
                    ),
        
                    SizedBox(height: 30.h),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png", height: 40.h),
                        SizedBox(width: 20.w),
                        Image.asset("assets/images/facebook.png", height: 40.h),
                      ],
                    ),
        
                    SizedBox(height: 30.h),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(width: 5.w),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  Register(),
                              ),
                            );
                          },
                          child: Text(
                            " Sign Up ",
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color:  Color(0xffFF9C00),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
