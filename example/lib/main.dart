import 'package:flutter/material.dart';
import 'package:utils_extensions/utils_extensions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Utils Extensions Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Utils Extensions Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Example transform string to text widget
        title: widget.title.toText(),
      ),
      // Example transform string to centered text widget
      body:
          'This text is using toTextCentered function from utils_extensions plugin'
              .toTextCentered(style: TextStyle(color: Colors.blue)),
    );
  }
}
