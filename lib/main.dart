import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dummy/pages/Screen1.dart';
import 'package:dummy/pages/Screen2.dart';
import 'package:dummy/pages/Screen3.dart';
import 'package:dummy/pages/Main.dart';
import 'package:dummy/pages/Carousel.dart';
import 'package:dummy/pages/Login.dart';
import 'package:dummy/pages/Home.dart';
import 'package:dummy/provider/counter_provider.dart';



void main() {
  runApp(

    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
      ),
      initialRoute:"/",
      routes:{
        "/":(context)=>Main(),
        "/second":(context)=>  Screen2(),
        "/horizontal":(context)=>  Screen3(),
        "/grid":(context)=>  MyHomePage(),
        "/carousel":(context)=>  Carousel(),
        "/login":(context)=>  Login(),
         "/home":(context)=>  Dashboard(),
      }
    );
  }
}





