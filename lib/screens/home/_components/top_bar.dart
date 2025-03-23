import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/bflix.png', fit: BoxFit.contain, height: 25),
          Container(
              padding: const EdgeInsets.only(right: 1),
              child: const Text('TV 프로그램', style: TextStyle(fontSize: 14))),
          Container(
              padding: const EdgeInsets.only(right: 1),
              child: const Text('영화', style: TextStyle(fontSize: 14))),
          Container(
              padding: const EdgeInsets.only(right: 1),
              child: const Text('내가 찜한 컨텐츠', style: TextStyle(fontSize: 14))),

        ],
      ),
    );
  }
}
