import 'package:flutter/material.dart';
import 'package:flutter_first_wearos_app/app_screens/home.dart';

void main() => runApp(General());

class General extends StatelessWidget {
  const General({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First WearOS App",
      theme: ThemeData(brightness: Brightness.light),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
