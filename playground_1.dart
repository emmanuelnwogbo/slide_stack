import 'package:flutter/material.dart';

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class PhotoStack extends StatefulWidget {
  @override
  _PhotoStackState createState() => _PhotoStackState();
}

class _PhotoStackState extends State<PhotoStack> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: MediaQuery.of(context).size.width,
            width: 300,
            color: Colors.red,
            child: LayoutBuilder(builder: (context, contraints) {
              print('these are the constraints I wanted');
              print(contraints);
              return Stack(children: [
                Positioned.directional(
                    top: 0.0,
                    bottom: 0.0,
                    start: 10.0,
                    textDirection: TextDirection.rtl,
                    child: Container(
                        height: 60.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(3.0, 6.0),
                                  blurRadius: 10.0)
                            ]))),
                Positioned.directional(
                    top: 2.0,
                    bottom: 2.0,
                    start: 20.0,
                    textDirection: TextDirection.rtl,
                    child: Container(
                        height: 60.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(3.0, 6.0),
                                  blurRadius: 10.0)
                            ]))),
                Positioned.directional(
                    top: 4.0,
                    bottom: 4.0,
                    start: 30.0,
                    textDirection: TextDirection.rtl,
                    child: Container(
                        height: 60.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(3.0, 6.0),
                                  blurRadius: 10.0)
                            ])))
              ]);
            })));
  }
}
