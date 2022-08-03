import 'package:flutter/material.dart';

class TileButton extends StatelessWidget {
  const TileButton({Key? key, this.onPressed, required this.text, this.icon})
      : super(key: key);

  final VoidCallback? onPressed;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Material(
        child: InkWell(
          onTap: onPressed,
          child: Center(
              child: icon != null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Icon(icon), Text(text)],
                    )
                  : Text(text)),
        ),
      ),
    );
  }
}
