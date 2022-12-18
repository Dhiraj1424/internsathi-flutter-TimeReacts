import 'package:add_delete/provider/themeprovider.dart';
import 'package:add_delete/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    
     MultiProvider(providers: [
ChangeNotifierProvider(create: (context) => ThemeProvider(ThemeData.light()))
    ],
    child:const MyApp()
    ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        final themeNotifier = Provider.of<ThemeProvider>(context);

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
            theme: themeNotifier.getTheme(),

      
      home: const HomePage(),
    
    );
  }
}


