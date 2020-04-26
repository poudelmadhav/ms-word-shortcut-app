import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About app"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "This is the app where you can find the shortcut keys using with Microsoft Word.",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.tealAccent,
            child: Text(
              "Go Back",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
