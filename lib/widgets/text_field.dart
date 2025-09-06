import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,  required this.controller, required this.hint});
  final TextEditingController controller;
  final String hint;


  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor:Colors.white,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
              borderSide: BorderSide(
                  color: Colors.grey
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
              borderSide: BorderSide(
                  color: Colors.lightBlue
              )
          )


      ),
    );


  }
}
