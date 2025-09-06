import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/login.dart';
import 'package:test1/widgets/botton.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SizedBox.expand(
            child: Image.asset(
              "assets/images/Rectangle 6.png",
              fit: BoxFit.cover,
            ),
          ),
        ),

        Center(
          child: Column(
            children: [
              SizedBox(height: 150.h),
              Image.asset("assets/images/cap.png", height: 80.h, width: 80.w),
              SizedBox(height: 10.h),

              Text(
                "100K+ Premium Recipe ",
                style: GoogleFonts.poppins(
                  fontSize: 18.sp, // responsive font
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),

              SizedBox(height: 230.h),

              Text(
                "      Get \n Cooking",
                maxLines: 2,
                style: GoogleFonts.poppins(
                  fontSize: 50.sp, // responsive font
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),

              SizedBox(height: 10.h),

              Text(
                "Simple way to find Tasty Recipe",
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),

              SizedBox(height: 60.h),

              CustomButton(text: "Start Cooking", page: const Login()),
            ],
          ),
        ),
      ],
    );
  }
}
