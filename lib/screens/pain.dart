import 'package:flutter/material.dart';

import '../ui/tile_button.dart';
import 'home.dart';

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
                    (index) => Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: Material(
                            color: Colors.red[index * 100],
                            child: InkWell(
                              onTap: () {
                                Navigator.popUntil(
                                    context, (route) => route.isFirst);
                              },
                              child:
                                  Center(child: Text((index + 1).toString())),
                            ),
                          ),
                        )))));
  }
}
