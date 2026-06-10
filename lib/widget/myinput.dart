import 'package:flutter/material.dart';

class MyInputWidget extends StatefulWidget {
  const MyInputWidget({super.key,
  required this.hintText,
  required this.validator,
  required this.myinputtype,
  required this.mycontroller,
  required this.obsecureText});
  final TextInputType myinputtype;
  final bool obsecureText;
  final TextEditingController mycontroller;
  final String hintText;
  final String? Function(String?)? validator;
  @override
  State<MyInputWidget> createState() => _MyInputWidgetState();
}

class _MyInputWidgetState extends State<MyInputWidget> {
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:widget.validator,
      obscureText: widget.obsecureText,
      keyboardType: widget.myinputtype,
      controller: widget.mycontroller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black12,
            width: 0.5
          ),
          borderRadius: BorderRadius.circular(
            16
          )
        )
      ),
    );
  }
}