import 'package:accra_app/home.dart';
import 'package:accra_app/notifications.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'onboarding.dart';
import 'notifications.dart';
import 'see_all.dart';

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
        '/': (context) => const Onboarding(),
        '/home': (context) => const Home(),
        // '/': (context) => const Home(),
        '/notifications': (context) => const Notifications(),
        // '/see_all': (context) => const SeeAll(),
        // '/': (context) => SeeAll(),
      },
    );
  }
}
