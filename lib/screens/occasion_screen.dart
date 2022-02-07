import 'package:dcc/components/reusable_card.dart';
import 'package:dcc/constants.dart';
import 'package:dcc/globals.dart';
import 'package:flutter/material.dart';
import 'package:dcc/constants.dart';

class OccasionScreen extends StatefulWidget {
  const OccasionScreen({Key? key}) : super(key: key);

  static const String routeId = '/occasion_screen';

  @override
  _OcassionScreenState createState() => _OcassionScreenState();
}

class _OcassionScreenState extends State<OccasionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Occasion'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 5),
            child: DropdownButton(
              underline: null,
              hint: Text("Select Country..."),
              value: gSelectedCountryItem,
              dropdownColor: kDropdownColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: kDropdownTextStyle,
              onChanged: (newValue) {
                setState(() {
                  gSelectedCountryItem = newValue;
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
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView.separated(
          padding: EdgeInsets.all(2),
          itemCount: occasions.length,
          itemBuilder: (context, index) {
            return ReusableCard(
              title: occasions[index].oName,
              image: occasions[index].oImage,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 20,
            );
          },
        ),
      ),
    );
  }
}
