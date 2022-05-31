import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
const Screen3({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Widget horizontalList1 = new Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      height: 200.0,
      child: new ListView(
          padding:EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(width: 160.0, color: Colors.red,),
        Container(width: 160.0, color: Colors.orange,),
        Container(width: 160.0, color: Colors.pink,),
        Container(width: 160.0, color: Colors.yellow,),
      ],
    )
    );
    Widget horizontalList2 = new Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(width: 160.0, color: Colors.blue,padding:EdgeInsets.all(32.0)),
        Container(width: 160.0, color: Colors.green,),
        Container(width: 160.0, color: Colors.cyan,),
        Container(width: 160.0, color: Colors.black,),
      ],
    )
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('List View'),
      ),
      body: new Center(
        child: new Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              horizontalList1,
              horizontalList2,
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

}

}