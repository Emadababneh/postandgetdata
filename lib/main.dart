import 'package:flutter/material.dart';
import 'package:post_and_get_data/screens/home_screens.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
   const Application({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        primaryColor:  Colors.orange[100],
        appBarTheme: AppBarTheme(
          elevation: 0.0,

        ),

      ),
      home:HomeScreens(),
    );
  }
}


