import 'package:flutter/material.dart';
import 'package:portofolio/src/features/home/home_page.dart';

void main(){
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeStatefulPage(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 1 Flutter"),
      ),
      body: const Center(
        child: Text("Flutter is running",
        style: TextStyle(fontSize: 18),),
        
      ),
    );
  }
}