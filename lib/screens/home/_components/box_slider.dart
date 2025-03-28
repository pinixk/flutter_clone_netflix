import 'package:flutter/material.dart';
import 'package:flutter_clone_netflix/models/movie.dart';

class BoxSlider extends StatelessWidget {
  final List<Movie> movies;

  BoxSlider({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('지금 뜨는 콘텐츠'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(movies),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeBoxImages(List<Movie> movies) {
  List<Widget> results = [];

  for (var i = 0; i < movies.length; i++) {
    results.add(
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(right: 10),
            child: Align(alignment: Alignment.centerLeft,
                child: Image.asset(movies[i].poster))
          ),
        )
    );
  }

  return results;
}