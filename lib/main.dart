import 'package:aviz_application/screens/add_aviz_fifth_step.dart';
import 'package:aviz_application/screens/add_aviz_forth_step.dart';
import 'package:aviz_application/screens/add_aviz_thirth_step.dart';
import 'package:aviz_application/screens/aviz_detail_screen.dart';
import 'package:aviz_application/screens/main_screen.dart';
import 'package:aviz_application/screens/my_aviz_screen.dart';
import 'package:aviz_application/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Aviz());
}

class Aviz extends StatelessWidget {
  const Aviz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'shabnam'),
      home: WelcomeScreen(),
    );
  }
}
