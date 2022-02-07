import 'package:dcc/globals.dart';
import 'package:dcc/screens/camera_screen.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.image, required this.title});

  final String title;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, CameraScreen.routeId);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 5,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  child: Image(
                    image: image,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
