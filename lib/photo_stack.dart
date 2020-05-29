import 'package:flutter/material.dart';
import 'cards.dart';

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class PhotoStack extends StatefulWidget {
  final double currentPage;

  PhotoStack(this.currentPage);

  @override
  _PhotoStackState createState() => _PhotoStackState();
}

class _PhotoStackState extends State<PhotoStack> {
  var padding = 20.0;
  var verticalInset = 20.0;

  @override
  Widget build(BuildContext context) {

    return Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
            child: Container(
                height: MediaQuery.of(context).size.width + 20,
                width: MediaQuery.of(context).size.width,
                //color: Colors.white,
                child: LayoutBuilder(builder: (context, contraints) {
                  var width = contraints.maxWidth;
                  var height = contraints.maxHeight;

                  var safeWidth = width - 2 * padding;
                  var safeHeight = height - 2 * padding;

                  var heightOfPrimaryCard = safeHeight;
                  var widthOfPrimaryCard =
                      heightOfPrimaryCard * cardAspectRatio;

                  var primaryCardLeft = safeWidth - widthOfPrimaryCard;
                  var horizontalInset = primaryCardLeft / 2;

                  return Cards(primaryCardLeft, horizontalInset, padding,
                      verticalInset, widget.currentPage);
                }))));
  }
}
