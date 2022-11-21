import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'package:accra_app/navigation_drawer_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          // title: const Text("AppBar Demo"),
          // leading: const IconButton(
          //     onPressed: null, icon: Icon(Icons.account_circle_rounded)),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/notifications');
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                ))
          ]),
      body: Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      width: 308,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 214, 214, 214),
                            width: 1.0),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Row(children: const [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 6.0)),
                        Icon(Icons.search_rounded),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 2.0)),
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
                  children: [
                    const Text(
                      "English Language",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/see_all'),
                      child: const Text(
                        "See all",
                        style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.45)),
                      ),
                    ),
                  ],
                ),
                EnglishCourse(),
                // Column(
                //   children: [
                //     CarouselSlider(
                //       options: CarouselOptions(height: 250.0),
                //       items: [1, 2, 3, 4, 5].map((i) {
                //         return Builder(
                //           builder: (BuildContext context) {
                //             return Container(
                //               width: MediaQuery.of(context).size.width,
                //               margin:
                //                   const EdgeInsets.symmetric(horizontal: 5.0),
                //               // decoration: const BoxDecoration(color: Colors.amber),
                //               child: const Courses(
                //                   image: "logo.png",
                //                   title: "My lang",
                //                   subtitle: "langs langs"),
                //             );
                //           },
                //         );
                //       }).toList(),
                //     ),
                //   ],
                // ),
                // const Courses(
                //     image: "logo.png",
                //     title: "My lang",
                //     subtitle: "langs langs"),
                // const SizedBox(
                //   height: 15,
                //   width: double.infinity,
                // ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                //     // const SizedBox(
                //     //   width: 200,
                //     //   height: 125,
                //     // ),
                //     Image.asset(
                //       "assets/images/logo.png",
                //       width: 200,
                //       height: 125,
                //     ),
                //     const Padding(
                //       padding: EdgeInsets.only(top: 15),
                //       child: SizedBox(
                //         width: 200,
                //         child: Text(
                //           "The Good English Academy Aljamar",
                //           style: TextStyle(
                //               fontSize: 14, fontWeight: FontWeight.w600),
                //         ),
                //       ),
                //     ),
                //     const Padding(
                //       padding: EdgeInsets.only(top: 5),
                //       child: Text("Junior High School"),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(top: 4),
                //       child: Row(
                //         children: const [
                //           Text(
                //             "5.0",
                //             style: TextStyle(fontSize: 12),
                //           ),
                //           // stars(),
                //           Ratings(),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Mathematics",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/see_all'),
                      child: const Text(
                        "See all",
                        style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.45)),
                      ),
                    ),
                  ],
                ),
                const MathCourse()
              ],
            ),
          ],
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

  void _setRatingAsFour() {
    setState(() {
      _rating = 4;
    });
  }

  void _setRatingAsFive() {
    setState(() {
      _rating = 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 12;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          // padding: const EdgeInsets.all(3),
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            iconSize: iconSize,
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
        SizedBox(
          // padding: const EdgeInsets.all(3),
          child: IconButton(
            padding: const EdgeInsets.only(left: 4),
            constraints: const BoxConstraints(),
            iconSize: iconSize,
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
        SizedBox(
          // padding: const EdgeInsets.all(3),
          child: IconButton(
            padding: const EdgeInsets.only(left: 4),
            constraints: const BoxConstraints(),
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
        SizedBox(
          // padding: const EdgeInsets.all(3),
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: _setRatingAsFour,
            icon: _rating >= 4
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
        SizedBox(
          // padding: const EdgeInsets.all(3),
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: _setRatingAsFive,
            icon: _rating >= 5
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

class Courses extends StatelessWidget {
  const Courses(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 15,
        width: double.infinity,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/$image",
            width: 200,
            height: 125,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              width: 200,
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              subtitle,
              style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.45)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              children: const [
                Text(
                  "5.0",
                  style: TextStyle(fontSize: 12),
                ),
                Ratings(),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}

class EnglishCourse extends StatelessWidget {
  EnglishCourse({Key? key}) : super(key: key);

  final List<String> imageList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 250.0, autoPlay: true, viewportFraction: 0.6),
          items: imageList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  // child: const Courses(
                  //     image: Image.asset(imageList[index]),
                  //     title: "The Good English Academy Aljamar",
                  //     subtitle: "Junior High Edition"),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

class MathCourse extends StatelessWidget {
  const MathCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 250.0,
            autoPlay: true,
            viewportFraction: 0.6,
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Courses(
                      image: "math1.png",
                      title: "Advanced Mathematics Support Programmer",
                      subtitle: "Kindergarten Edition"),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
