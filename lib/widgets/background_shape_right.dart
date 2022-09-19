import 'package:bmi_calc/constants/constants.dart';
import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  final double width;
  const RightShape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'شاخص منفی',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: width,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
            ),
            color: black,
          ),
        ),
      ],
    );
  }
}
