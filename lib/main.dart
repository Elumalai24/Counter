import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 10;
  void _decrementCounter() {
    if (counter >= 1) {
      setState(() {
        counter = counter - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Decrement Counter',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 20,
              )),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Welcome to my app',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
              Text(counter.toString()),
              TextButton(
                onPressed: () => _decrementCounter(),
                child: Text(
                  counter >= 1 ? 'Press again' : 'Completed',
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () => _decrementCounter(),
        ));
  }
}
