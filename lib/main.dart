import 'package:flutter/material.dart';
import 'package:flutter_clone_netflix/screens/home/home_screen.dart';
import 'package:flutter_clone_netflix/screens/_components/bottom_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    TabController controller;

    return MaterialApp(
      title: 'Clone Netfilx',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
      ),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const HomeScreen(),
                Container(),
                Container(),
                Container(),
              ],
            ),
            bottomNavigationBar: const Bottom(),
          )),
    );
  }
}
