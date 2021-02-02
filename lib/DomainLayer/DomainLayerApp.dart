import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Domain_Layer_HomeScreen.dart';

class DomainLayerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: Domain_Layer_HomeScreen(),
    );
  }
}
