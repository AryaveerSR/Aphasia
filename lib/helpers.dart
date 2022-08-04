import 'package:flutter/material.dart';

int calculateAxisCount(BuildContext context) =>
    (MediaQuery.of(context).size.width / 120).floor();
