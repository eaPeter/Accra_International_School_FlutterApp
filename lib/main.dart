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
        appBar: AppBar(
            // title: const Text("AppBar Demo"),
            leading: const IconButton(
                onPressed: null, icon: Icon(Icons.account_circle_rounded)),
            actions: const <Widget>[
              IconButton(onPressed: null, icon: Icon(Icons.notifications))
            ]),
        body: Container(
          margin: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 30,
              ),
              const Text(
                "Seek knowledge",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    width: 285,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromARGB(255, 163, 163, 162),
                          width: 1.0),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Row(children: const [
                      Icon(Icons.search_rounded),
                      Text("Search"),
                    ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 40, 48, 84),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
