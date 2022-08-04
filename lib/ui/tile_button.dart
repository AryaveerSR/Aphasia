import 'package:flutter/material.dart';

class TileButton extends StatelessWidget {
  const TileButton(
      {Key? key,
      this.onPressed,
      required this.text,
      this.icon,
      this.redIntensity = 0})
      : super(key: key);

  final VoidCallback? onPressed;
  final String text;
  final IconData? icon;
  final int redIntensity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Material(
        color: getColor(redIntensity),
        child: InkWell(
          onTap: onPressed,
          child: Center(
              child: icon != null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(icon),
                        Text(text,
                            style: Theme.of(context).textTheme.button!.copyWith(
                                color: redIntensity > 4
                                    ? Colors.white
                                    : Colors.black))
                      ],
                    )
                  : Text(text,
                      style: Theme.of(context).textTheme.button!.copyWith(
                          color:
                              redIntensity > 4 ? Colors.white : Colors.black))),
        ),
      ),
    );
  }
}

Color getColor(int intensity) {
  if (intensity == 0) {
    return Colors.white;
  } else if (intensity == 1) {
    return Colors.red[50]!;
  } else if (intensity > 1) {
    return Colors.red[(intensity - 1) * 100]!;
  } else {
    return Colors.green[(2 - intensity) * 100]!;
  }
}
