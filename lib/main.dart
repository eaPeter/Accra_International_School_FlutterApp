import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 214.25,
                height: 162,
              ),
              const Text("Accra International School",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  )),
              // const Text("Accra International School",
              //     style: GoogleFonts.oswald(textStyle: display1),),
              const Text(
                "Training our leaders for today",
                style: TextStyle(fontSize: 16),
              )
            ]),
      ),
    );
  }
}
