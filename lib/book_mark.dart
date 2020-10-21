import 'package:flutter/material.dart';

class BookMak extends StatefulWidget {
  @override
  _BookMakState createState() => _BookMakState();
}

class _BookMakState extends State<BookMak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookmark"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is Book Mark page")
        ],
      ),
    );
  }
}
