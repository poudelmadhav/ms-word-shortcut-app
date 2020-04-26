import 'package:flutter/material.dart';
import '../data/data.dart';
import './about_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.tealAccent,
                child: Center(
                  child: Text(
                    "MS Word Guide",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("MS Word Shortcuts"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            iconSize: 26,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AboutPage();
                },
              ));
            },
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2.0,
          );
        },
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.tealAccent,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            title: Text(data[index]["key"]),
            subtitle: Text(data[index]["use"]),
          );
        },
      ),
    );
  }
}
