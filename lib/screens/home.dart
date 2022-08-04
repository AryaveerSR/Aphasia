import 'package:flutter/material.dart';

import '../ui/tile_button.dart';
import '../data.dart';
import '../helpers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: GridView.count(
                crossAxisCount: calculateAxisCount(context),
                children: List.generate(
                    options.length,
                    (index) => TileButton(
                        text: options[index].name,
                        icon: options[index].icon,
                        onPressed: () =>
                            options[index].onClick?.call(context))))));
  }
}
