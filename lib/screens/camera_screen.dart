import 'dart:ffi';
import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:dcc/constants.dart';
import 'package:dcc/globals.dart';
import 'package:dcc/screens/photo_screen.dart';
import 'package:flutter/material.dart';
import 'package:dcc/main.dart';
import 'package:flutter/services.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  static const String routeId = '/cameraScreen';
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
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
        actions: [
          IconButton(
            onPressed: () async {
              final file = File('/assets/images/dress.jpg');

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhotoScreen(file),
                ),
              );
            },
            icon: Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          ),
          child: AspectRatio(
            aspectRatio: 0.5,

            //child:
            ///ersatz der weil
            //     IconButton(
            //   icon: Icon(Icons.ac_unit_outlined),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => PhotoScreen(
            //           Image(
            //             image: AssetImage('lib/assets/images/dress.jpg'),
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            //),
            child: CameraCamera(
              onFile: (file) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhotoScreen(file),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
