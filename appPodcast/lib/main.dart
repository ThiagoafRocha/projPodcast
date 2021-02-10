import 'package:appPodcast/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'V0rtex',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.purple[900], //Color(0xFF121212),
        textTheme: TextTheme(
          button: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => Colors.deepPurple),
          ),
        ),
        primaryColor: Colors.purple,
        iconTheme: IconThemeData(
          color: Colors.purple,
        ),
      ),
      home: Scaffold(
        appBar: null,
        body: LoginScreen(),
      ),
    );
  }
}
