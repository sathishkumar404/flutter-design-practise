import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Column(
          children: [
            Container(
              // margin:EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.green),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(color: Colors.grey),
                      padding: EdgeInsets.all(16),
                      width: 120,
                      height: 120,
                      child: Column(
                        children: [
                          Text("Test1"),
                          Text("Test"),
                          Text("Test"),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(color: Colors.grey),
                      padding: EdgeInsets.all(16),
                      width: 120,
                      height: 120,
                      child: Column(
                        children: [
                          Text("Test"),
                          Text("Test"),
                          Text("Test"),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Image.asset('assets/images/logo.png'),
                    Text('Cell 2'),
                    Text('Cell 3'),
                  ]),
                  TableRow(children: [
                    Text('Cell 4'),
                    Text('Cell 5'),
                    Text('Cell 6'),
                  ])
                ],
              ),
            )
          ],
        ));
  }
}
