import 'package:flutter/material.dart';
import 'package:flutter_clone_netflix/models/movie.dart';
import 'package:flutter_clone_netflix/screens/home/_components/box_slider.dart';
import 'package:flutter_clone_netflix/screens/home/_components/carosel_slider.dart';
import 'package:flutter_clone_netflix/screens/home/_components/circle_slider.dart';
import 'package:flutter_clone_netflix/screens/home/_components/top_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'assets/images/test_movie_1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '테스트2',
      'keyword': '스릴러',
      'poster': 'assets/images/test_movie_1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'assets/images/test_movie_1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'assets/images/test_movie_1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'assets/images/test_movie_1.png',
      'like': false,
    }),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            CaroselImages(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}
