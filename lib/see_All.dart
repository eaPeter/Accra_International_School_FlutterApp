import 'package:flutter/material.dart';
import 'package:accra_app/home.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'See All',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/home');
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 24.0,
            color: Colors.black,
          ),
        ),
        // ),
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        child: Column(children: const [
          EnglishCourse(),
        ]),
      ),
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
  const EnglishCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 24,
        );
      },
      itemBuilder: (context, index) {
        return const EnglishCourseAll();
        // return buildCard(index);
      },

      // child: Column(
      //   children: [
      //     CarouselSlider(
      //       options: CarouselOptions(
      //           height: 250.0, autoPlay: true, viewportFraction: 0.6),
      //       items: [1, 2, 3, 4, 5].map((i) {
      //         return Builder(
      //           builder: (BuildContext context) {
      //             return SizedBox(
      //               width: MediaQuery.of(context).size.width,
      //               child: Column(
      //                 children: const [
      //                   Courses(
      //                       image: "english1.png",
      //                       title: "The Good English Academy Aljamar",
      //                       subtitle: "Junior High Edition"),
      //                   // Courses(
      //                   //     image: "english2.png",
      //                   //     title: "The Good English Academy Aljamar",
      //                   //     subtitle: "Junior High Edition"),
      //                 ],
      //               ),
      //             );
      //           },
      //         );
      //       }).toList(),
      //     ),
      //   ],
      // ),
    );
  }

  Widget buildCard(int index) => SizedBox(
        child: Row(
          children: const [
            Courses(
                image: "english1.png",
                title: "The Good English Academy Aljamar",
                subtitle: "Junior High Edition"),
            Courses(
                image: "english2.png",
                title: "The Good English Academy Aljamar",
                subtitle: "Junior High Edition"),
          ],
        ),
      );
}

class CoursesAll extends StatelessWidget {
  const CoursesAll(
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

class EnglishCourseAll extends StatelessWidget {
  const EnglishCourseAll({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 250.0, autoPlay: true, viewportFraction: 0.6),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: const [
                      Courses(
                          image: "english1.png",
                          title: "The Good English Academy Aljamar",
                          subtitle: "Junior High Edition"),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
