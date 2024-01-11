import 'dart:math';

import 'package:flutter/material.dart';

class SpecialCategoryItems extends StatelessWidget {
  final Color color;
  final Icon icon;
  final GestureTapCallback? onTap;

  const SpecialCategoryItems(
      {super.key, required this.color, required this.icon, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Transform.rotate(
              angle: pi / 4,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.grey.shade200,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: color,
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: IconButton(
              icon: icon,
              onPressed: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
