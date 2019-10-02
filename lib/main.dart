import 'package:flutter/material.dart';
import 'package:shop_ui/ui/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'QuickSand'
      ),
      home: ProfileScreen(),
      routes: {
        'details': (ctx) => DetailsScreen(),
        'profile': (ctx) => ProfileScreen(),
      },
    );
  }
}
