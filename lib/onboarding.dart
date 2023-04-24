import 'package:bmi/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Onboarding extends StatefulWidget {

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
   Future.delayed(Duration(seconds: 3)).then((value) {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BMIDashboard()));
   } );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/assets/img/logo.png', width: MediaQuery.of(context).size.width/5),
                SizedBox(height: 30,),
                Text('NATH BODY-MASS-INDEX CALCULATOR',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),),
                SizedBox(height: 30,),
              SpinKitCircle(
              color: Colors.white,
              size: 30.0,
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
