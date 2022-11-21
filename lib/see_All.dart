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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Row(
                children: const [
                  SeeAllCourses(
                      image: "english1.png",
                      title: "The Good English Academy Aljamar",
                      subtitle: "Junior High Edition"),
                  Spacer(),
                  SeeAllCourses(
                      image: "english1.png",
                      title: "The Good English Academy Aljamar",
                      subtitle: "Junior High Edition"),
                ],
              ),
              const SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Row(
                children: const [
                  SeeAllCourses(
                      image: "english1.png",
                      title: "The Good English Academy Aljamar",
                      subtitle: "Junior High Edition"),
                  Spacer(),
                  SeeAllCourses(
                      image: "english1.png",
                      title: "The Good English Academy Aljamar",
                      subtitle: "Junior High Edition"),
                ],
              ),
              const SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Row(
                children: const [
                  SeeAllCourses(
                      image: "english1.png",
                      title: "The Good English Academy Aljamar",
                      subtitle: "Junior High Edition"),
                  Spacer(),
                  SeeAllCourses(
                      image: "english1.png",
                      title: "The Good English Academy Aljamar",
                      subtitle: "Junior High Edition"),
                ],
              ),
              const SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Row(
                children: const [
                  SeeAllCourses(
                      image: "english1.png",
                      title: "The Good English Academy Aljamar",
                      subtitle: "Junior High Edition"),
                  Spacer(),
                  SeeAllCourses(
                      image: "english1.png",
                      title: "The Good English Academy Aljamar",
                      subtitle: "Junior High Edition"),
                ],
              ),
              const SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Row(
                children: const [
                  SeeAllCourses(
                      image: "english1.png",
                      title: "The Good English Academy Aljamar",
                      subtitle: "Junior High Edition"),
                  Spacer(),
                  SeeAllCourses(
                      image: "english1.png",
                      title: "The Good English Academy Aljamar",
                      subtitle: "Junior High Edition"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SeeAllCourses extends StatelessWidget {
  const SeeAllCourses(
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
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/$image",
            width: 174,
            height: 125,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: SizedBox(
              width: 174,
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

class CourseList {
  const CourseList({
    required this.courseImg,
    required this.title,
    required this.subtitle,
  });
  final String courseImg;
  final String title;
  final String subtitle;
}
