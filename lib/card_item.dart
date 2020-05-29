import 'package:flutter/material.dart';
import 'dart:math';

class CardItem extends StatelessWidget {
  final double padding;
  final double verticalInset;
  final double delta;
  final double start;

  CardItem(this.padding, this.verticalInset, this.delta, this.start);

  @override
  Widget build(BuildContext context) {
    return Positioned.directional(
        bottom: padding + verticalInset * max(-delta, 0.0),
        start: start,
        textDirection: TextDirection.rtl,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(3.0, 6.0),
                          blurRadius: 10.0)
                    ]))));
  }
}
