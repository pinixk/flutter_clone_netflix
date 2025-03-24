import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_netflix/models/movie.dart';

class CaroselImages extends StatefulWidget {
  List<Movie> movies;

  CaroselImages({super.key, required this.movies});

  @override
  State<CaroselImages> createState() => _CaroselImagesState();
}

class _CaroselImagesState extends State<CaroselImages> {
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
    return Column(
      children: [
        Container(padding: const EdgeInsets.all(20)),
        CarouselSlider(
          items: posters,
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _currnetPage = index;
                _currnetKeyword = keywords[_currnetPage];
              });
            }
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 3),
          child: Text(_currnetKeyword, style: const TextStyle(fontSize: 11)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                likes[_currnetPage]
                    ? IconButton(onPressed: () {}, icon: const Icon(Icons.check))
                    : IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                const Text('내가 찜한 콘텐츠', style: TextStyle(fontSize: 11)),
              ],
            ),
            Container(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  child: const Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.black),
                      Padding(padding: EdgeInsets.all(3)),
                      Text('재생', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                )),
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
                  const Text('정보', style: TextStyle(fontSize: 11)),
                ],
              ),
            ),
          ],
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: makeIndicator(likes, _currnetPage),
          ),
        )
      ],
    );
  }
}

List<Widget> makeIndicator(List list, int currentPage) {
  List<Widget> results = [];

  for (var i = 0; i < list.length - 1; i++) {
    results.add(Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPage == i
            ? const Color.fromRGBO(255, 255, 255, 0.9)
            : const Color.fromRGBO(255, 255, 255, 0.4),
      ),
    ));
  }

  return results;
}
