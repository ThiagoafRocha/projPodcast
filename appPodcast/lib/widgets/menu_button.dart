import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final Function() onPressed;

  MenuButton({this.icon, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: ElevatedButton(
        child: Stack(
          alignment: FractionalOffset.center,
          children: [
            Align(
              child: icon,
              alignment: Alignment.centerLeft,
            ),
            Text(
              text,
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
