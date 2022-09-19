// import 'package:bmi_calc/constants/constants.dart';
import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double width;
  const LeftShape({Key? key, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.0),
            ),
            color: Colors.green,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          ' شاخص مثبت',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    );
  }
}
