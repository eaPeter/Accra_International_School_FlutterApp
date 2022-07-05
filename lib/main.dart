import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            // title: const Text("AppBar Demo"),
            leading: const IconButton(
                onPressed: null, icon: Icon(Icons.account_circle_rounded)),
            actions: const <Widget>[
              IconButton(onPressed: null, icon: Icon(Icons.notifications))
            ]),
        body: Container(
          child: Column(
            children: [
              Image.asset("assets/images/splash1"),
            ],
          ),
        ),
      ),
    );
  }
}
