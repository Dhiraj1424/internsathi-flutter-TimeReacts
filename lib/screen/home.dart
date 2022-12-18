import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/themeprovider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name='Dhiraj';
  @override
  Widget build(BuildContext context) {
        final themeNotifier = Provider.of<ThemeProvider>(context);
        String greeting() {
    String msg;
    DateTime now = DateTime.now();
    int hours = now.hour;
    int mins = now.minute;
    
    String minute = mins.toString();

    if (mins < 10) {
      minute = '0$mins';
    }
    if (hours < 12) {
      msg = "Good Morning! ";
      themeNotifier.setTheme(ThemeData.light());
    } else if (hours < 18) {
      msg = "Good Afternoon! ";
     themeNotifier.setTheme(ThemeData.light());

    } else {
      msg = "Good Night! ";
            themeNotifier.setTheme(ThemeData.dark());
    }
    return "It's now $hours:$minute\n$msg";
  }
    return Scaffold(
body: Center(
  child:   Center(
    child:  RichText(text: TextSpan(
      text: greeting(),
      children: <TextSpan>[
        TextSpan(
          text: name,
          style:const TextStyle(
            fontWeight: FontWeight.bold
          )
        )
      ]
    ),
    )
  ),
),
    );
  }

}