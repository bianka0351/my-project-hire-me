import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hireme/presentation/authentication/bloc/auth_bloc.dart';
import 'package:hireme/presentation/introduction.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  // runApp(EasyLocalization(
  //     supportedLocales: [Locale('en', 'US'), Locale('ar', 'DZ')],
  //     path: 'assets/translations',
  //     fallbackLocale: Locale('en', 'US'),
  //     startLocale: Locale('en', 'US'),
  //     saveLocale: true,
  //     child: const MyApp()));
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(),
      child: MaterialApp(
          // localizationsDelegates: context.localizationDelegates,
          //   supportedLocales: context.supportedLocales,
          //   locale: context.locale,
          builder: BotToastInit(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Color(0xff3a5d93),
              selectedItemColor: Color(0xffe7895e),
              unselectedItemColor: Colors.white,
            ),
          ),
          home: Introduction()),
    );
  }
}
