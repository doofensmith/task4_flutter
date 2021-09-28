import 'package:flutter/material.dart';

import '/ui/create_note_page/create_note_page.dart';
import '/ui/home_page/home_page.dart';
import '/ui/temp_splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        primaryColor: Colors.blue,
      ),
      home: const SplashPage(),
      routes: <String, WidgetBuilder>{
        '/splash': (BuildContext context) {
          return const SplashPage();
        },
        '/home': (BuildContext context) {
          return const HomePage();
        },
        '/editor': (BuildContext context) {
          return CreateNotePage();
        },
      },
    );
  }
}
