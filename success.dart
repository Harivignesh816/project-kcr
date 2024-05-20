import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hari_new/constants.dart';
import 'package:hari_new/login_screen.dart';

class success extends StatefulWidget {
  const success({super.key});

  @override
  State<success> createState() => _successState();
}

class _successState extends State<success> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    var transparent;
    return Scaffold(backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(children: <Widget>[

            Image.asset(slogImage,
              height: height * 0.49,
              width: width, fit: BoxFit.cover,),
            Container(
              height: height * 0.50,
              width: width,
              // color: Colors.cyan.withOpacity(0.3),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    stops: [0.0, 0.9],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent, Colors.white
                    ]),
              ),
            ),

          ],

          ),
          Center(child: const Text("SUCCESSFULL",style:
          TextStyle(fontSize: 45 ,fontWeight:FontWeight.bold,color:Colors.green ),)),
          Center(child: Icon(Icons.done_outline_rounded,color: Colors.green,size: 80,),),
          Align
            (alignment: Alignment.center,

              child: TextButton(onPressed: ()
              {Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginScreen()));},
                  child: Text("NEXT ",style: TextStyle(color: (Colors.blue),)))
          )

        ],

      ),
    );
  }
}