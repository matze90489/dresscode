import 'package:dcc/models/country.dart';
import 'package:dcc/models/occasion.dart';
import 'package:flutter/material.dart';

const Color kBackgroundColor = Color(0xFFE5E5E5);
const Color kDropdownColor = Colors.white;
const TextStyle kDropdownTextStyle =
    TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold);

List<Country> countries = [
  Country(
      cName: 'Germany',
      cDomain: 'de',
      cFlag: AssetImage('lib/assets/countryFlags/de.png')),
  Country(
      cName: 'Japan',
      cDomain: 'jp',
      cFlag: AssetImage('lib/assets/countryFlags/jp.png')),
  Country(
      cName: 'UAE',
      cDomain: 'uae',
      cFlag: AssetImage('lib/assets/countryFlags/uae.png')),
];

List<Occasion> occasions = [
  Occasion(
    oName: 'Wedding',
    oImage: AssetImage('lib/assets/occasions/wedding.png'),
  ),
  Occasion(
    oName: 'Church',
    oImage: AssetImage('lib/assets/occasions/church.png'),
  ),
  Occasion(
    oName: 'Office',
    oImage: AssetImage('lib/assets/occasions/office.png'),
  ),
];
