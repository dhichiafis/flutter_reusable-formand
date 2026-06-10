import 'package:flutter/material.dart';
import 'package:myformi/widget/mybutton.dart';
import 'package:myformi/widget/myinput.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //TextEditingController pcontroller=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();

  void handleLogin()async {
    print("this is the login pressed");
    setState(() {
      
    });
    if (_formKey.currentState!.validate()) {
    // All fields are valid
      print("Login successful");
      print(emailController.text);
      print(passwordController.text);

    // Call your API here
    } else {
      print("Form is invalid");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            MyInputWidget(
              hintText: "Email Address",
              validator: (value){
                if (value == null || value.isEmpty) {
                  return "Email is required";
                }
        
                if (!value.contains("@")) {
                  return "Invalid email";
                }
        
                return null;
              },
              mycontroller: emailController,
              myinputtype: TextInputType.emailAddress,
              obsecureText: false,
            ),
            //MyInputWidget(),
           // MyInputWidget(),
            //MyInputWidget(),
            MyInputWidget(
              hintText: "Password",
              validator: (value){
                if(value==null || value.isEmpty){
                  return "password cannot is empty";
                }
                if(value.length<8){
                  return "the password must be greator than 8 character";
                }
        
                return null;
              },
              mycontroller: passwordController,
              myinputtype: TextInputType.text,
              obsecureText: true,
            ),
            SizedBox(height: 10,),
            Mybutton(
              onPressed:()=> handleLogin(),
              mytext: "Login")
          ],
        ),
      ),),
    );
  }
}