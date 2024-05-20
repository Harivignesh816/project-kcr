import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hari_new/constants.dart';
import 'package:hari_new/details.dart';
import 'package:hari_new/detailsn.dart';
import 'package:hari_new/login_screen.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var transparent;
    return Scaffold(backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment:   CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          Stack(children:<Widget>[

          Image.asset(slogImage,
            height: height*0.49,
            width: width,fit: BoxFit.cover,),
            Container(
              height: height*0.50,
              width: width,
              // color: Colors.cyan.withOpacity(0.3),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    stops: [0.0,0.9],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,Colors.white
                    ]),




              ),
            ),

          ],


        ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Center(child: const Text("Type of user?", style: TextStyle(color: Colors.green),)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: Align(alignment: Alignment.center,child: SizedBox(
                height: height*0.08,
                  width: width-200,
                  child: TextButton(

                    onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const details()));}, child: Text("HOME USER"),)),),
            ),



            Align(alignment: Alignment.center,child: SizedBox(
              height: height*0.08,
                width: width-200,
                child: TextButton(

                  onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const detailsn()));}, child: Text("HOSPITAL USER"),)),),


            Padding(
              padding: const EdgeInsets.only(top: 30 ),
              child: Align(alignment: Alignment.center,child: SizedBox(
                height: height*0.08,
                  width: width-300,
                  child: TextButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>const LoginScreen()));}, child: Text("Back"),)),),
            )
    ]
    ),








    );
  }
}

