import 'package:bmi/bmicalculator.dart';
import 'package:bmi/main.dart';
import 'package:flutter/material.dart';




class ResultPage extends StatelessWidget {

  ResultPage({required this.Result, required this.Comment, required this.Advice});
  final String Comment;
  final String Result;
  final String Advice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1E1E33),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        Comment.toUpperCase(),
                        style: TextStyle(color: Colors.green, fontSize: 25, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        Result,
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontSize: 70,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        Advice,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.pink),
                  ),
                  child: Text('RE-CALCULATE'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
