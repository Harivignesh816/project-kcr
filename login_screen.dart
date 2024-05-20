import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hari_new/second.dart';
import 'constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var transparent;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment:   CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          Stack(
            children:<Widget>[
              Image.asset(slogImage,
                height: height*0.49,
                width: width,fit: BoxFit.cover,),
              Container(
                height: height*0.50,
                width: width,
                // color: Colors.cyan.withOpacity(0.3),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      stops: [0.3,0.9],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,Colors.white
                      ]),

                ),
              ),

            ],

          ),



          Center(child: const Text(appName,style: TextStyle(fontSize: 45 ,fontWeight:FontWeight.bold,color:Colors.green ),)),
          Center(child: const Text(slogan, style: TextStyle(color: Colors.green),)),
          Stack(children:<Widget>[Text(str),
            Container(height: 20, width: width/7, decoration:   BoxDecoration(gradient: LinearGradient(colors: [Colors.transparent,Colors.green])),)],
          ),
          TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.email),
                labelText: "EMAIL ADDRESS"

            ),
          ),
          TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.password),
                labelText: "PASSWORD"
            ),
          ),
          Align
            (alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {},child: Text("Forget password?"),)
          ),
          Align
            (alignment: Alignment.center,

              child: TextButton(onPressed: ()
              {Navigator.push(context,MaterialPageRoute(builder: (context)=>const secondpage()));},
                  child: Text("Login to account",style: TextStyle(color: (Colors.cyan),)))
          )

        ],

      ),
    );
  }
}


