// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:chat/pages/SecondPage.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //the appBar
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
              child: Text(
            'login Screen',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child:

//BYTECRAFT image

                    Container(
                        height: 300,
                        width: 400,
                        child: Image.asset('images/bytecraft.png')),
              ),

// the WELCOME part

              Text('Welcome Back !',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w400,
                      fontSize: 16)),
              SizedBox(
                height: 20,
              ),

//the USERNAME field

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey.shade300),
                      hintText: 'Username',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple)),
                      fillColor: Colors.grey.shade100,
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10,
              ),

// the PASSWORD field

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey.shade300),
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple)),
                      fillColor: Colors.grey.shade100,
                      filled: true),
                ),
              ),
              SizedBox(
                height: 20,
              ),

// the LOGIN botton

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Center(
                        child: Text('Log in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ))),
                  ]),
                ),
              ),
            ],
          ),
        ));
  }
}
