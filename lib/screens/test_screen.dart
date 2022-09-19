import 'package:flutter/material.dart';

class TabTest extends StatefulWidget {
  TabTest({Key? key}) : super(key: key);

  @override
  State<TabTest> createState() => _TabTestState();
}

class _TabTestState extends State<TabTest> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Text(
                  '$counter',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter += 1;
                  });
                },
                child: Text('click'),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    counter += 1;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(40),
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Text('click'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
