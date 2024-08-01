import 'package:flutter/material.dart';
import 'package:zanditoon/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  //App위젯에 키를 StatelessWidget이라는 슈퍼클래스에 보낸것

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
