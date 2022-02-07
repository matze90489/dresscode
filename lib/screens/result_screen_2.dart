import 'dart:convert';

import 'package:dcc/globals.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../constants.dart';

class ResultScreen2 extends StatefulWidget {
  const ResultScreen2({Key? key}) : super(key: key);

  static const String routeId = '/resultScreen2';

  @override
  _ResultScreen2State createState() => _ResultScreen2State();
}

class _ResultScreen2State extends State<ResultScreen2> {
  bool haveResult = false;

  @override
  void initState() {
    super.initState();
    setResult();
  }

  void setResult() async {
    await Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        haveResult = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Result'),
        ),
      ),
      body: haveResult ? Result() : ResultLoading(),
    );
  }
}

class ResultLoading extends StatelessWidget {
  const ResultLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.fromLTRB(width * 0.2, 80, 30, 30),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                child: SizedBox(
                  child: CircularProgressIndicator(),
                  width: 32,
                  height: 32,
                ),
                padding: EdgeInsets.only(bottom: 16),
              ),
              Padding(
                child: Text(
                  'Please wait...',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.only(bottom: 4),
              ),
              Text(
                "Your outfit is being checked!",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String nachricht = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              child: Container(
                color: Colors.green.withOpacity(0.2),
                padding: EdgeInsets.all(20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Your outfit\n\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'is absolutely \n\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      TextSpan(text: ' appropriate!'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Have fun at the wedding!\n\n ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                children: <TextSpan>[],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
