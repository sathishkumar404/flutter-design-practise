import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:dummy/provider/counter_provider.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}




class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
   List<String> litems = [];
   var list = [];


   @override
   void initState() {
     super.initState();
     _getList();
   }
  

  void  _getList() async{

var url =
      Uri.https('reactnative.dev', '/movies.json');

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
     var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
        setState((){
          litems:jsonResponse["movies"];
        });
        list = jsonResponse["movies"];
    print('Number of books about http: ${list}.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
  }



  @override
  Widget build(BuildContext context) {
       final login = Provider.of<Counter>(context);

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
       drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Grid'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
     body:GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return new Container(
               alignment: Alignment.center,
              child: Column(
              children: <Widget>[
                  
               Container(
                child:Text('Welcome to Prime Message',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Product Sans',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                  ),
                ),
              ),
          
               Container(
                child:ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 600,
                // color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
              );
            },
          );
          })
              )
               ]
            ),
            );
            
            
            
          }),)
    );
    
  }
}






class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        '${context.watch<Counter>().count}',
        key: const Key('counterState'));
  }
}



