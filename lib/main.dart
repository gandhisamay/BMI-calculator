import 'screens/resultPage.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) {
          return InputPage();
        },
        '/first': (context) {
          return ResultPage();
        }
      },
      title: 'BMI Calculator',
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          body1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
