// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  _LunchScreenState createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      //navigations
      Navigator.pushReplacementNamed(context, '/appScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: AlignmentDirectional.topEnd,
                  end: AlignmentDirectional.bottomStart,
                  colors: [
                    Colors.grey.shade700,
                    Colors.grey.shade200,
                  ])),
          child: Text(
            'سُّبحة الأذكار',
            style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),

        ));
  }
}
