import 'package:dcc/constants.dart';
import 'package:dcc/globals.dart';
import 'package:dcc/models/country.dart';
import 'package:dcc/screens/occasion_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeId = '/home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isArrowVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Country'),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              hint: Text("Select country..."),
              value: gSelectedCountryItem,
              dropdownColor: kDropdownColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: kDropdownTextStyle,
              underline: Container(
                height: 1,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (var newValue) {
                setState(() {
                  gSelectedCountryItem = newValue;
                  isArrowVisible = true;
                });
              },
              items: countries.map((e) {
                return DropdownMenuItem<String>(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: e.cFlag,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(e.cName),
                    ],
                  ),
                  value: e.cName,
                );
              }).toList(),
            ),
            SizedBox(
              width: 20,
            ),
            Visibility(
              visible: isArrowVisible,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    OccasionScreen.routeId,
                  );
                },
                child: Icon(
                  Icons.arrow_forward,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
