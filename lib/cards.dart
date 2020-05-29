import 'package:flutter/material.dart';
import 'data.dart';
import 'dart:math';

class Cards extends StatelessWidget {
  final List<Widget> cards = new List();
  final double primaryCardLeft;
  final double horizontalInset;
  final double padding;
  final double verticalInset;
  final double currentPage;

  Cards(this.primaryCardLeft, this.horizontalInset, this.padding,
      this.verticalInset, this.currentPage);

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < images.length; i++) {
      var delta = i - currentPage;
      bool isOnRight = delta > 0;

      var start = padding +
          max(primaryCardLeft - horizontalInset * -delta * (isOnRight ? 15 : 1),
              0.0);

      var card = Positioned.directional(
          top: padding + verticalInset * max(-delta, 0.0),
          bottom: padding + verticalInset * max(-delta, 0.0),
          start: start,
          textDirection: TextDirection.rtl,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(3.0, 6.0),
                          blurRadius: 10.0)
                    ]),
                child: AspectRatio(
                  aspectRatio: 12.0 / 16.0,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.network(images[i], fit: BoxFit.cover),
                    ],
                  ),
                ),
              )));

      cards.add(card);
    }

    return Stack(
      children: cards,
    );
  }
}
