import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hari_new/constants.dart';
import 'package:hari_new/login_screen.dart';
import 'package:hari_new/success.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
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
          TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                labelText: "PATIENT NAME"
            ),
          ),
          TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.health_and_safety_rounded),
                labelText: "GARDIAN NAME"
            ),
          ),
          TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.password),
                labelText: "PATIENT AGE"
            ),
          ),TextField(
            decoration: InputDecoration(prefixIcon: Icon(Icons.numbers),
                labelText: "MOBILE NUMBER",

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Align
              (alignment: Alignment.center,

                child: TextButton(onPressed: ()
                {Navigator.push(context,MaterialPageRoute(builder: (context)=>const success()));},
                    child: Text("SUBMIT",style: TextStyle(color: (Colors.cyan),)))
            ),
          )







   ]
    )
    );
  }
}
