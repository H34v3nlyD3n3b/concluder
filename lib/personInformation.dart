import 'package:flutter/material.dart';

class InformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: Container(
          alignment: Alignment.topCenter,
          child: FractionallySizedBox(
            widthFactor: 0.85,
            heightFactor: 0.85,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF888A94),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(32.0)),
                ),
                child: Row(
                  children: <Widget>[CircleImage(), NameAndPosition()],
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

class CircleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 75,
        height: 75,
        margin: const EdgeInsets.only(left: 16.0, top: 20.0),
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
      margin: const EdgeInsets.only(left: 16.0, top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
