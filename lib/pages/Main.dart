// ignore_for_file: avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Text('Sathish Cookbook')],
        ),
        elevation: 4.0,
        centerTitle: true,
      ),
      body: new Center(
        child: new Container(
          padding: EdgeInsets.all(32.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              new Container(
                  child: ElevatedButton(
                child: const Text('Grid'),
                onPressed: () => {Navigator.pushNamed(context, '/grid')},
              )),
              new Container(
                  child: ElevatedButton(
                child: const Text('Form'),
                onPressed: () => {Navigator.pushNamed(context, '/second')},
              )),
              new Container(
                  child: ElevatedButton(
                child: const Text('Horizontal List View'),
                onPressed: () => {Navigator.pushNamed(context, '/horizontal')},
              )),
              new Container(
                  child: ElevatedButton(
                child: const Text('Border Radius'),
                onPressed: () => {Navigator.pushNamed(context, '/carousel')},
              )),
              new Container(
                  child: ElevatedButton(
                child: const Text('Login Page'),
                onPressed: () => {Navigator.pushNamed(context, '/login')},
              )),
               new Container(
                  child: ElevatedButton(
                child: const Text('Home Page'),
                onPressed: () => {Navigator.pushNamed(context, '/home')},
              ))
            ],
          ),
        ),
      ),
    );
  }
}
