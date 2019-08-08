import 'package:flutter/material.dart';
import 'package:concluder/personInformation.dart';

class TopPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragDown: (InformView) {
        Navigator.of(context).push(InformPageRoute());
      },
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: Color(0xFF888A94),
          borderRadius:
              BorderRadiusDirectional.vertical(bottom: Radius.circular(32.0)),
        ),
        child: Row(
          children: <Widget>[CircleImage(), NameAndPosition()],
        ),
      ),
    );
  }
}

class InformPageRoute extends MaterialPageRoute {
  InformPageRoute()
      : super(builder: (BuildContext context) => new InformView());

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: InformView());
  }
}


class CircleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        width: 75,
        height: 75,
        margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
      ),
    );
  }
}

class NameAndPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sample Name',
            style: TextStyle(
              fontSize: 21,
              color: Colors.white,
            ),
          ),
          Text(
            'Position Name',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
