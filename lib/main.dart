import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void stars() {
    const Icon(
      Icons.star,
      size: 9,
      color: Color(0xFFFFC700),
    );
  }

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
              const SizedBox(
                width: double.infinity,
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "English Language",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text("See all")
                ],
              ),
              const SizedBox(
                height: 15,
                width: double.infinity,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // const SizedBox(
                  //   width: 200,
                  //   height: 125,
                  // ),
                  Image.asset(
                    "assets/images/logo.png",
                    width: 200,
                    height: 125,
                  ),
                  const Text(
                    "The Good English Academy Aljamar",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const Text("Junior High School"),
                  Row(
                    children: const [
                      Text(
                        "5.0",
                        style: TextStyle(fontSize: 12),
                      ),
                      // stars(),
                      Ratings(),
                    ],
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

class Ratings extends StatefulWidget {
  const Ratings({Key? key}) : super(key: key);

  @override
  State<Ratings> createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  int _rating = 0;

  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 20;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: _rating >= 1
                ? Icon(
                    Icons.star,
                    size: iconSize,
                  )
                : Icon(
                    Icons.star_border,
                    size: iconSize,
                  ),
            onPressed: _setRatingAsOne,
            color: const Color(0xFFFFC700),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            onPressed: _setRatingAsTwo,
            icon: _rating >= 2
                ? Icon(
                    Icons.star,
                    size: iconSize,
                  )
                : Icon(
                    Icons.star_border,
                    size: iconSize,
                  ),
            color: const Color(0xFFFFC700),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            onPressed: _setRatingAsThree,
            icon: _rating >= 3
                ? Icon(
                    Icons.star,
                    size: iconSize,
                  )
                : Icon(
                    Icons.star_border,
                    size: iconSize,
                  ),
            color: const Color(0xFFFFC700),
          ),
        ),
      ],
    );
  }
}
