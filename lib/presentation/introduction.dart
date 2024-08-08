import 'package:flutter/material.dart';
import 'package:hireme/const/app_keys.dart';
import 'package:hireme/presentation/authentication/login.dart';
import 'package:hireme/presentation/company/home_layout_screen_company.dart';
import 'package:hireme/presentation/on-boarding.dart';
import 'package:hireme/presentation/user/home_layout_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';




class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  void initState() {
    SharedPreferences.getInstance().then((value) {
      final userId = value.getInt(AppKeys.userId);
      Future.delayed(const Duration(seconds: 5), () {
        if(userId==null) {
          Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => OnBoarding()));
        } else{
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      HomeLayoutScreen())
          );
        }
      });
    });

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
