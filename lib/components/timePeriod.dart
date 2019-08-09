import 'package:flutter/material.dart';

class TimePeriod extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TimePeriodState();
  }
}

class _TimePeriodState extends State<TimePeriod> {
  var _periods = ['Monthly', 'Yearly'];
  var _currentTime = 'Monthly';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
          border: new Border.all(color: Colors.white)
      ),
      child: DropdownButton<String>(
        items: _periods.map((String dropDownTimePeriod) {
          return DropdownMenuItem<String>(
            value: dropDownTimePeriod,
            child: Text(
              dropDownTimePeriod,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        }).toList(),
        onChanged: (String newTimePeriodSelected) {
          setState(() {
            this._currentTime = newTimePeriodSelected;
          });
        },
        value: _currentTime,
      ),
    );
  }
}
