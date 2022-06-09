// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Sign in to continue',style: TextStyle(fontSize: 18,color: Colors.grey[600]),),
                  Text('Vegi',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              color: Colors.green.shade900,
                              blurRadius: 30,
                              offset: Offset(3, 3),
                            )
                          ])),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: SignInButton(Buttons.Google, onPressed: () {})),
                      SignInButton(Buttons.Apple, onPressed: () {}),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'By signing in you are agreeing to our',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      SizedBox(height: 10,),
                      RichText(
                          text: TextSpan(
                              text: 'Terms ',
                              style: TextStyle(color: Colors.grey[600]),
                              children: <TextSpan>[
                            TextSpan(
                                text: 'and ',
                                style: TextStyle(color: Colors.grey[500]),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Privacy Policy',
                                      style: TextStyle(color: Colors.grey[600]))
                                ])
                          ]))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
