import 'package:flutter/material.dart';
import 'home.dart';

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
    initialRoute:
    '/home';
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //     // title: const Text("AppBar Demo"),
        //     leading: const IconButton(
        //         onPressed: null, icon: Icon(Icons.account_circle_rounded)),
        //     actions: const <Widget>[
        //       IconButton(onPressed: null, icon: Icon(Icons.notifications))
        //     ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/onboarding1.png',
                width: 327.61,
                height: 300,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Revise and learn ahead anywhere",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Resources such as books and videos are available at no cost.",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      width: 25,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Color(0xFF283054),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      width: 25,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Color(0xFFEBEBEB),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      width: 25,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Color(0xFFEBEBEB),
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 302,
                height: 47,
                child: ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF283054))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.fork_right_outlined,
                          color: Colors.white,
                        ),
                      ],
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
