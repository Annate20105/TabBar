import 'package:flutter/material.dart';
import 'package:tabbar_app/ui/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      fontFamily: "GoogleSans",
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF02AD58),
        bottomAppBarColor: Colors.white
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: HomeWidget(),
    );
  }
}

