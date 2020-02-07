import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String val;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
        SizedBox(height: 50),
        Text("Sign up",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30)),
        SizedBox(height: 20),
        Text("Create an account to \nstart reporting unwanted incidents",
            style: TextStyle(color: Colors.black54, fontSize: 17)),
        SizedBox(height: 50),
        TextField(
          decoration: InputDecoration(hintText: "Full Name"),
        ),
        DropdownButton(
          isExpanded: true,
          hint: Text("Select ur clg"),
          value: val,
          onChanged: (value) {
            setState(() {
              val = value;
            });
          },
          items: [
            DropdownMenuItem(
                value: "bharath university", child: Text("bharath university")),
            DropdownMenuItem(value: "srm", child: Text("srm")),
            DropdownMenuItem(
                value: "vellore institute", child: Text("vellore institute"))
          ],
        ),
        TextField(decoration: InputDecoration(hintText: "Student ID")),
        TextField(decoration: InputDecoration(hintText: "Email address")),
        TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Password", suffixIcon: Icon(Icons.remove_red_eye))),
        TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Repeat Password",
                suffixIcon: Icon(Icons.remove_red_eye))),
        SizedBox(height: 30),
        Center(
            child: InkWell(
                child: Container(
                    padding: EdgeInsets.only(
                        left: 50, right: 50, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )))),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text("I already have an account",style: TextStyle(color:Colors.blue),),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                                                  child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.black)
                              )
                            ),
                            child: Text("Login")
                          ),
                        )
                      ]
                    )
      ]),
    );
  }
}
