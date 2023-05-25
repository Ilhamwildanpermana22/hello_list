import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'W',
      'I',
      'L',
      'D',
      'A',
      'N',
      'A',
      'P',
      'P'
    ];
    final List<int> colorCodes = <int>[
      600,
      500,
      400,
      300,
      200,
      100,
      50,
      100,
      200
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Hello list")),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 150,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text(entries[index])),
          );
        },
      ),
    );
  }
}
