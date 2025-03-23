import 'package:flutter/material.dart';
import 'package:flutter_clone_netflix/models/movie.dart';

class CaroselSlider extends StatefulWidget {
  List<Movie> movies;

  CaroselSlider({super.key, required this.movies});

  @override
  State<CaroselSlider> createState() => _CaroselSliderState();
}

class _CaroselSliderState extends State<CaroselSlider> {
  late List<Movie> movies;
  late List<Widget> posters;
  late List<String> keywords;
  late List<bool> likes;
  int _currnetPage = 0;
  late String _currnetKeyword;

  @override
  void initState() {
    super.initState();

    movies = widget.movies;
    posters = movies.map((m) => Image.asset(m.poster)).toList();
    keywords = movies.map((m) => m.keyword).toList();
    likes = movies.map((m) => m.like).toList();
    _currnetKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
