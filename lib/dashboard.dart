import 'package:bmi/resultpage.dart';
import 'package:flutter/material.dart';

import 'bmicalculator.dart';

Color selectedColor = Color(0xFF111328);
Color maleSelected = Color(0xFF1E1E33);
Color femaleSelected = Color(0xFF1E1E33);
Color cardbackground = Color(0xFF1E1E33);
int selectedHeight = 150;
int selectedWeight = 60;
int selectedAge = 25;


class BMIDashboard extends StatefulWidget {
  const BMIDashboard({Key? key}) : super(key: key);

  @override
  State<BMIDashboard> createState() => _BMIDashboardState();
}

class _BMIDashboardState extends State<BMIDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text('BMI Calculator'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          maleSelected = selectedColor;
                          femaleSelected = cardbackground;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: GenderColumn(icon: Icons.man, title: 'MALE'),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: maleSelected,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          femaleSelected = selectedColor;
                          maleSelected = cardbackground;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child:
                          GenderColumn(icon: Icons.woman, title: 'FEMALE'),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: femaleSelected,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: cardbackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(color: Colors.grey[200]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            selectedHeight.toString(),
                            style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: 40,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            ' CM',
                            style: TextStyle(color: Colors.grey[200]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Slider(
                        value: selectedHeight.roundToDouble(),
                        onChanged: (value) {
                          setState(() {
                            selectedHeight = value.toInt();
                          });
                        },
                        min: 100,
                        max: 250,
                        inactiveColor: Colors.white,
                        activeColor: Colors.pink,
                        secondaryActiveColor: Colors.blueAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cardbackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(color: Colors.grey[200]),
                            ),
                            Text(
                              selectedWeight.toString(),
                              style: TextStyle(
                                  color: Colors.grey[200],
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    press: () {
                                      setState(() {
                                        selectedWeight--;
                                      });
                                    },
                                    myicon: Icons.remove),
                                const SizedBox(
                                  width: 10,
                                ),
                                CustomButton(
                                    press: () {
                                      setState(() {
                                        selectedWeight++;
                                      });
                                    },
                                    myicon: Icons.add),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cardbackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(color: Colors.grey[200]),
                            ),
                            Text(
                              selectedAge.toString(),
                              style: TextStyle(
                                  color: Colors.grey[200],
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    press: () {
                                      setState(() {
                                        selectedAge--;
                                      });
                                    },
                                    myicon: Icons.remove),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomButton(
                                    press: () {
                                      setState(() {
                                        selectedAge++;
                                      });
                                    },
                                    myicon: Icons.add),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  var BMC = BmiCalculator(
                      Weight: selectedWeight, Height: selectedHeight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                          Result: BMC.CalculateBMI(),
                          Comment: BMC.CommentBMI(),
                          Advice: BMC.AdviseBMI()),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.pink),
                ),
                child: Text('CALCULATE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GenderColumn extends StatelessWidget {
  GenderColumn({required this.icon, required this.title});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.grey[200]),
        )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({required this.press, required this.myicon});
  Function() press;
  IconData myicon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: press,
      child: Icon(
        myicon,
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      constraints: BoxConstraints.tightFor(height: 45, width: 45),
      fillColor: Color(0xFF4C4F5E).withOpacity(.4),
    );
  }
}