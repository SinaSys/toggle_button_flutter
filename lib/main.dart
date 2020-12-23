import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> _isSelected = [false,false,false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Toggle Button")),
        body: Center(
          child: ToggleButtons(
            children: <Widget>[
              Icon(Icons.format_bold),
              Icon(Icons.format_italic),
              Icon(Icons.link),
            ],
            isSelected: _isSelected,
            borderRadius: BorderRadius.circular(30),
            borderWidth: 5,
            borderColor: Colors.orange,
            selectedBorderColor: Colors.redAccent,
            selectedColor: Colors.purple,
            onPressed: (int index) {
              setState(() {
                print(index);
                _isSelected[index] = !_isSelected[index];
              });
            },
          ),
        ),
      ),
    );
  }
}
