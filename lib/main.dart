import 'package:accra_app/home.dart';
import 'package:accra_app/notifications.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'splash1.dart';
import 'notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ButtonStyle styling = ElevatedButton.styleFrom(
    //   primary: const Color(0xFF283054),
    // );

    return MaterialApp(
      initialRoute: '/',
      routes: {
        // '/': (context) => const Splash1(),
        '/home': (context) => const Home(),
        '/': (context) => const Home(),
        '/notifications': (context) => const Notifications()
      },
    );
  }
}
