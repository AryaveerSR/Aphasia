import 'package:flutter/material.dart';

import '../data.dart';
import '../helpers.dart';
import '../ui/tile_button.dart';

class EmotionsScreen extends StatelessWidget {
  const EmotionsScreen({Key? key, required this.options}) : super(key: key);
  final List<ListOption> options;

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
                        redIntensity: -((index - 2) * 2),
                        onPressed: () => Navigator.popUntil(
                            context, (route) => route.isFirst))))));
  }
}
