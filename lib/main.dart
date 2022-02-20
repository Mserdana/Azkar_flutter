import 'package:axkar_app/Screenes/AppScreen.dart';
import 'package:axkar_app/Screenes/LunchScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  headline6: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Cario',
                      fontSize: 20,
      )))),
      initialRoute: '/lunchScreen',
      routes: {
        '/lunchScreen': (context) => const LunchScreen(),
        '/appScreen': (context) => AppScreen()
      },
    );
  }
}
