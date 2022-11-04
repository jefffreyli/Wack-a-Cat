import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const MyApp());
}

int count = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halloween"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 226, 144, 3),
      ),
      body: GridView.count(crossAxisCount: 4, children: <Widget>[
        Container(
            color: Colors.grey[850],
            child: Center(
                child: Text(isWin(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )))),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
        Container(
          child: randomImage(),
        ),
      ]),
    );
  }

  Widget randomImage() {
    bool isVisible = true;
    Random r = Random();
    int num = r.nextInt(16);
    if (num <= 3) {
      return (GestureDetector(
          onTap: () {
            setState(() {
              isVisible = false;
              count += 1;
            });
          },
          child: Visibility(
              visible: isVisible,
              child: Image.asset("assets/black-cat.webp", fit: BoxFit.fill))));
    }
    return Container(color: Colors.grey);
  }

  String isWin() {
    if (count == 10) return "Happy Halloween!";
    return count.toString();
  }
}
