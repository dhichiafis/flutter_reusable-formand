import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({
    super.key,
    required this.onPressed,
    required this.mytext});
  final String mytext;
  final void Function() onPressed;//creating a reusable input function here 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16)),
            color: Colors.black
          ),
          
            child: Text('${mytext}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight:FontWeight.w400
            ),),
        
      ),
    );
  }
}