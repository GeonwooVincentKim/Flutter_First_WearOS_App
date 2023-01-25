import 'package:flutter/material.dart';
import 'package:flutter_first_wearos_app/widgets/view_watch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wear/wear.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeController();
}

class HomeController extends State<Home> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // if (constraints.maxWidth < 300) {
        //   return ViewWatch(this);
        // }
        return ViewWatch(this);
      },
    );
  }
}
