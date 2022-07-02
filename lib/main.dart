import 'package:flutter/material.dart';
import 'firstscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: "Navigations",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Final App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "TRAINING",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: "Times New Roman",
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => firstscreen(),
                  ),
                );
              },
              padding: EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10.0,
              ),
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
