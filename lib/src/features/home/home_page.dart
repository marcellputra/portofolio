import 'package:flutter/material.dart';

class HomestatelessPage extends StatelessWidget {
  const HomestatelessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 2 - stateless"),
      ),
      body: const Center(
        child: Text(
          "Ini Stateles Widget",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class HomeStatefulPage extends StatefulWidget {
  const HomeStatefulPage({super.key});

  @override
  State<HomeStatefulPage> createState() => _HomeStatefulPageState();
}

class _HomeStatefulPageState extends State<HomeStatefulPage> {
  int counter = 0;

  void tambah() {
    setState(() {
      counter++;
    });
  }

  void kurang() {
    setState(() {
      if (counter > 0) counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 2 - Stateful")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter: $counter",
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: tambah, child: const Text("Tambah")),
            ElevatedButton(onPressed: kurang, child: const Text("Kurang")),
            ElevatedButton(onPressed: reset, child: const Text("Reset")),
          ],
        ),
      ),
    );
  }
}

