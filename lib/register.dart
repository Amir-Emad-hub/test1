import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/widgets/botton.dart';
import 'package:test1/widgets/text_field.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirm = TextEditingController();

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme:  IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                "Create an account",
                style: GoogleFonts.poppins(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                "Let’s help you set up your account,\nit won’t take long.",
                maxLines: 2,
                style: GoogleFonts.poppins(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 25.h),
        
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("  Name", style: TextStyle(fontSize: 14.sp)),
                    SizedBox(height: 5.h),
                    CustomTextField(controller: name, hint: "Enter Name"),
        
                    SizedBox(height: 10.h),
                    Text("  Enter Email", style: TextStyle(fontSize: 14.sp)),
                    SizedBox(height: 5.h),
                    CustomTextField(controller: email, hint: "Enter Email"),
        
                    SizedBox(height: 10.h),
                    Text("  Enter Your Password", style: TextStyle(fontSize: 14.sp)),
                    CustomTextField(controller: password, hint: "Enter password"),
        
                    SizedBox(height: 10.h),
                    Text("  Confirm Password", style: TextStyle(fontSize: 14.sp)),
                    CustomTextField(controller: confirm, hint: "Retype password"),
        
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          activeColor:  Color(0xffFF9C00), // custom orange
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value ?? false;
                            });
                          },
                        ),
                        Text(
                          "Accept terms & Condition",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color:  Color(0xffFF9C00),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        
              SizedBox(height: 25.h),
              Center(
                child: Column(
                  children: [
                    CustomButton(text: "Register", page:  Login()),
        
                    SizedBox(height: 15.h),
                    Text(
                      "___Or Sign up With___",
                      style: GoogleFonts.poppins(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color:  Color(0xffD9D9D9),
                      ),
                    ),
        
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png", height: 40.h),
                        SizedBox(width: 20.w),
                        Image.asset("assets/images/facebook.png", height: 40.h),
                      ],
                    ),
        
                    SizedBox(height: 35.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already a member?", style: TextStyle(fontSize: 13.sp)),
                        SizedBox(width: 5.w),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  Login()),
                            );
                          },
                          child: Text(
                            " Sign In ",
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
