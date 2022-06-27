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
        // appBar: AppBar(),
        body: Center(
          child: Column(children: [
            Image.asset("assets/image/logo.png"),
            const Text("Accra International School"),
            const Text("Training our leaders for today")
          ]),
        ),
      ),
    );
  }
}
