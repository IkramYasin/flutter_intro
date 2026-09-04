// ignore_for_file: sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_basics/views/registerscr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Register_Screen(title: 'Register Page'),
      // MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
      else {
        // Optionally, you can show a message or handle the case when the counter is already at 0.
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Counter cannot go below 0')),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(255, 0, 73, 157),
        // Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 174, 255),
      body: Center(
       
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:',
                style: TextStyle(color: Colors.white)),
            Text(
              '$_counter',
              style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          const SizedBox(width: 30),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
      
    );
  }
}




