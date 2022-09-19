import 'package:bmi_calc/constants/constants.dart';
import 'package:bmi_calc/widgets/background_shape_left.dart';
import 'package:bmi_calc/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  double resultBmi = 0;
  String resultText = '';
  double widthGood = 100;
  double widthBad = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'تو چنده ؟ Bmi',
          style: TextStyle(color: black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      controller: weightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: orangeBackground,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'وزن',
                        hintStyle: TextStyle(
                          color: orangeBackground.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      controller: heightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: orangeBackground,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'قد',
                        hintStyle: TextStyle(
                          color: orangeBackground.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  setState(() {
                    final weight = double.parse(weightController.text);
                    final height = double.parse(heightController.text);
                    setState(() {
                      resultBmi = weight / (height * height);
                      if (resultBmi > 25) {
                        widthBad = 270;
                        widthGood = 50;
                        resultText = 'شما اضفه وزن دارید';
                      } else if (resultBmi >= 18.5 && resultBmi <= 25) {
                        widthBad = 50;
                        widthGood = 270;
                        resultText = 'وزن شما نرمال است';
                      } else {
                        widthBad = 10;
                        widthGood = 10;
                        resultText = 'وزن شما کمتر از حد نرمال است';
                      }
                    });
                  });
                },
                child: Text(
                  '! محاسبه کن',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                '${resultBmi.toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48),
              ),
              Text(
                '$resultText',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: orangeBackground,
                ),
              ),
              SizedBox(height: 80),
              RightShape(
                width: widthBad,
              ),
              SizedBox(height: 15),
              LeftShape(
                width: widthGood,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
