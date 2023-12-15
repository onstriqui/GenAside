import 'package:flutter/material.dart';
import 'package:genasidefinale/screens/brand1.dart';
import 'package:genasidefinale/screens/landingpage.dart';
import 'package:genasidefinale/screens/scrollpage.dart';
import 'package:genasidefinale/screens/brand.dart';
import 'package:genasidefinale/screens/donate.dart';
import 'package:genasidefinale/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    constant constants = constant(context);
    return MaterialApp(
        home: scrollpage(constants), //constants
    );
  }
}
