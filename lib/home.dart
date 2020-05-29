import 'package:flutter/material.dart';
import 'data.dart';
import 'photo_stack.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentPage = images.length - 1.0;
  PageController controller = PageController(initialPage: images.length - 1);

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFF1b1e44),
            Color(0xFF2d3447),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          /*tileMode: TileMode.clamp*/
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Stack(children: <Widget>[
                    PhotoStack(currentPage),
                    Positioned.fill(
                        child: PageView.builder(
                            itemCount: images.length,
                            controller: controller,
                            reverse: true,
                            itemBuilder: (context, index) {
                              return Container();
                            }))
                  ]),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
