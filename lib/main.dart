import 'package:flutter/material.dart';
import 'package:post_api/screen/provider/home_providre.dart';
import 'package:post_api/screen/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => HomeProvider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => homescreen(),
      },
    ),
  ));
}
