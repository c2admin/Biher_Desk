import 'package:flutter/material.dart';
import './signup.dart';

void main() => runApp(First());

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Second());
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.all(30),
          children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width * .5,
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(
            height: 50,
          ),
          Text("Hello!",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          Text("Welcome to V-TIP",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: "Email/User id"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye))),
          SizedBox(height: 30),
          Center(
            child: FlatButton(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(height: 15),
          Center(
              child: Text("Forgot Password",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold))),
                      SizedBox(
                        height:50
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('still without account?',style: TextStyle(color:Colors.blue),),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupScreen()));
                            },
                                                      child: Container(
                              decoration:BoxDecoration(
                                border: Border(bottom:BorderSide(width: 4,color: Colors.blue))
                              ),
                              child: Text("Sign Up")
                            ),
                          )
                        ]
                      ),
                      SizedBox(
                        height:50
                      ),
                      Divider(color: Colors.black38),
                      SizedBox(
                        height:20
                      ),
                      Center(
                        child: Text("I am Admin",style:TextStyle(color: Colors.blue,fontWeight:FontWeight.bold))
                      )
        ]));
  }
}
