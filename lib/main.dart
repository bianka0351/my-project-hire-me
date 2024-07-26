import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hireme/presentation/authentication/bloc/auth_bloc.dart';
import 'package:hireme/presentation/introduction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context)=>AuthBloc(),

      child:  MaterialApp(
        builder: BotToastInit(),
        debugShowCheckedModeBanner: false,
       home:Introduction()
      ),
    );
  }
}