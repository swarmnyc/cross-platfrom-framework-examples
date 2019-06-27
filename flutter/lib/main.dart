import 'dart:io';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = "";

  void _nameChanged(String name) {
    setState(() {
      _name = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    // body widgets
    var widgets = <Widget>[
      Text(
        'Enter Your Name',
        style: TextStyle(fontSize: 20),
      ),
      TextField(
        onChanged: _nameChanged,
        style: TextStyle(),
      )
    ];

    if (_name.isNotEmpty) {
      // show greeting only name is not empty
      widgets.add(Container(
        margin: EdgeInsets.only(top: 8.0),
        child: Text(
          "Hello $_name",
          style: Theme.of(context).textTheme.title,
        )
      ));
    }

    return Scaffold(
        // use different background color for different platforms
        backgroundColor: Platform.isAndroid
            ? Color.fromARGB(255, 165, 198, 57)
            : Color.fromARGB(255, 153, 153, 153),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widgets,
            ),
          ),
        ));
  }
}
