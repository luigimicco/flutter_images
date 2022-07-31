import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter images demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageCard("assets/images/duck.png"),
            ImageCard("assets/images/cat.webp"),
            ImageCard("assets/images/dart.jpg"),
          ],
        ),
      ),
    );
  }

  // ImageCard
  Widget ImageCard(imagePath) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              constraints: const BoxConstraints.expand(height: 300),
              alignment: Alignment.center,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ));
  }
}
