import 'package:flutter/material.dart';
import 'package:hireme/presentation/authentication/login.dart';
import 'package:hireme/presentation/on-boarding.dart';



class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoarding()));
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Image.asset(
        'assets/images/background.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      )),
    );
  }
}
