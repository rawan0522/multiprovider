import 'package:flutter/material.dart';
import 'package:multiproviders/Providers/news_provider.dart';
import 'package:multiproviders/Providers/randomuser_provider.dart';
import 'package:multiproviders/Screens/home.dart';
import 'package:multiproviders/Screens/news_screen.dart';
import 'package:multiproviders/Screens/randomuser_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
           ChangeNotifierProvider(create: (context) => NewsProvider(),
           ),
           ChangeNotifierProvider(create: (context) => RandomuserProvider(),

           ) ,
         ],
            child: MaterialApp(
          home: Home(),
              debugShowCheckedModeBanner: false,
    ),
    );
  }
}
