import 'package:flutter/material.dart';

import '../ui/tile_button.dart';

class YesNo extends StatelessWidget {
  const YesNo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        SizedBox(
          height: (MediaQuery.of(context).size.height / 2) -
              Theme.of(context).textTheme.button!.fontSize!.toInt(),
          child: TileButton(
            text: "Yes",
            icon: Icons.check_rounded,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        SizedBox(
          height: (MediaQuery.of(context).size.height / 2) -
              Theme.of(context).textTheme.button!.fontSize!.toInt(),
          child: TileButton(
            text: "No",
            icon: Icons.close_rounded,
            onPressed: () => Navigator.pop(context),
          ),
        )
      ],
    )));
  }
}
