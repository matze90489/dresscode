import 'dart:io';

import 'package:dcc/screens/result_screen.dart';
import 'package:dcc/screens/result_screen_2.dart';
import 'package:flutter/material.dart';

class PhotoScreen extends StatefulWidget {
  PhotoScreen(this.photo);

  File photo;

  static const String routeId = '/photoScreen';

  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Scan'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              child: Image.file(widget.photo),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.delete, size: 18),
                label: Text("DON'T USE"),
              ),
              GestureDetector(
                onLongPress: () {
                  Navigator.of(context).pushNamed(ResultScreen2.routeId);
                },
                child: ElevatedButton.icon(
                  onPressed: () {
                    //TODO Hier kommt die ganze an die API schick-Logik rein.
                    Navigator.of(context).pushNamed(ResultScreen.routeId);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  icon: Icon(Icons.check, size: 18),
                  label: Text("CHECK MY OUTFIT"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
