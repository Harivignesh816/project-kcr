import 'package:flutter/material.dart';
import 'package:hari_new/constants.dart';
import 'package:hari_new/details.dart';
import 'package:hari_new/detailsn.dart';
import 'package:hari_new/second.dart';
import 'package:hari_new/success.dart';
import 'constants.dart';
import 'login_screen.dart';

void main() {
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      title: appName,
      debugShowCheckedModeBanner: false,
    );
  }
}


