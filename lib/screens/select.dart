import 'package:flutter/material.dart';

import '../ui/tile_button.dart';
import '../helpers.dart';
import '../data.dart';

class Select extends StatelessWidget {
  const Select({Key? key, required this.options, required this.onPressed})
      : super(key: key);
  final List<ListOption> options;
  final VoidCallback onPressed;

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
                        onPressed: onPressed)))));
  }
}
