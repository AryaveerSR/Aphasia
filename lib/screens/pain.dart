import 'package:flutter/material.dart';

import '../helpers.dart';
import '../ui/tile_button.dart';

class PainScreen extends StatelessWidget {
  const PainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: GridView.count(
                crossAxisCount: calculateAxisCount(context),
                children: List.generate(
                    10,
                    (index) => TileButton(
                        text: (index + 1).toString(),
                        redIntensity: index,
                        onPressed: () => Navigator.popUntil(
                            context, (route) => route.isFirst))))));
  }
}
