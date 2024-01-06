import 'package:flutter/material.dart';
import 'package:genasidefinale/constants.dart';
import 'package:genasidefinale/screens/landingpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    constant constants = constant(context);
    return MaterialApp(
        home: landingpage(), //constants
    );
  }
}
