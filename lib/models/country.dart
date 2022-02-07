import 'package:flutter/material.dart';

class Country {
  Country({
    required this.cName,
    required this.cDomain,
    required this.cFlag,
  }) {
    // cFlag = getCountryFlag(cDomain);
  }

  final String cName;
  final AssetImage cFlag;
  final String cDomain;
}
