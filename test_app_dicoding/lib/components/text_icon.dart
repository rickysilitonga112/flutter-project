import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final _teks;
  final _icon;

  TextIcon(this._teks, this._icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          _icon,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          _teks,
          style: TextStyle(
            fontFamily: 'Oxygen',
          ),
        ),
      ],
    );
  }
}
