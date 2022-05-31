import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dummy/provider/counter_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Count '),
        ),
        body: new Container(
            padding: EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 8.0,
            ),
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              // padding:EdgeInsets.all(32.0),
              children: const <Widget>[
                TextField(
                  decoration: const InputDecoration(
                    filled: true,
                    labelText: 'Username',
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                TextField(
                    decoration: const InputDecoration(
                      filled: true,
                      labelText: 'Password',
                    ),
                    obscureText: true),
                SizedBox(
                  height: 24,
                ),
              ],
            )));
  }
}
